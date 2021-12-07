<?php

namespace App\Admin\Controllers;

use App\Models\Products;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ProductsController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Products';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Products());
		$grid->model()->orderBy('id', 'desc');

        $grid->column('id', __('Id'));
		$grid->column('image', __('Image'));
        $grid->column('title', __('Title'));
		$grid->column('cost', __('Cost'));
        $grid->column('preview', __('Preview'));
		$grid->column('content', __('Content'));
		$grid->column('is_active', __('Is_active'))->bool();
		$grid->column('published_at', __('Published_at'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Products::findOrFail($id));

        $show->field('id', __('Id'));
		$show->field('image', __('Image'));
        $show->field('title', __('Title'));
        $show->field('cost', __('Cost'));
        $show->field('preview', __('Preview'));
		$show->field('content', __('Content'));
        $show->field('is_active', __('Is_active'));
        $show->field('published_at', __('Published_at'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Products());
		
		$form->text('image', __('Image'));
		$form->text('title', __('Title'));
		$form->text('cost', __('Cost'));
        $form->text('preview', __('Preview'));
		$form->text('content', __('Content'));
        $form->text('is_active', __('Is_active'));
        $form->text('published_at', __('Published_at'));

        return $form;
    }
}
