<?php

namespace App\Admin\Controllers;

use App\Models\Order;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class OrdersController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Order';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Order());
		$grid->model()->orderBy('id', 'desc');

        $grid->column('id', __('Id'));
		$grid->column('user_id', __('User id'));
        $grid->column('name', __('Name'));
		$grid->column('email', __('Email'));
        $grid->column('phone', __('Phone'));
		$grid->column('address', __('Address'));
		$grid->column('comment', __('Comment'));
		$grid->column('amount', __('Amount'));
		$grid->column('status', __('Status'))->bool();
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
        $show = new Show(Order::findOrFail($id));

        $show->field('id', __('Id'));
		$show->field('user_id', __('User id'));
        $show->field('name', __('Name'));
        $show->field('email', __('Email'));
        $show->field('phone', __('Phone'));
		$show->field('address', __('Address'));
        $show->field('comment', __('Comment'));
        $show->field('amount', __('Amount'));
        $show->field('status', __('Status'));
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
        $form = new Form(new Order());
		
		$form->text('user_id', __('User id'));
		$form->text('name', __('Name'));
		$form->text('email', __('Email'));
        $form->text('phone', __('Phone'));
		$form->text('address', __('Address'));
        $form->text('comment', __('Comment'));
        $form->text('amount', __('Amount'));
        $form->text('status', __('Status'));

        return $form;
    }
}
