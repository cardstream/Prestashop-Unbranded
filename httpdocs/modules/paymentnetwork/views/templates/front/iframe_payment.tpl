{*
* 2018 Payment Network
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
*
*
*  @author Matthew James <support@cardstream.com>
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*}
{extends "$layout"}

{block name="content"}

{capture name=path}
	<a href="{$link->getPageLink('order', true, NULL, '')|escape:'htmlall':'UTF-8'}" rel="nofollow" title="{l s='Go back to the Checkout' mod='payment_network'}">
	{l s='Checkout' mod='payment_network'}
	{l s='Pay using Payment Network' mod='Payment Network'}
{/capture}

{assign var='current_step' value='payment'}

{if isset($api_errors)}
	<div class="errors">
	{foreach $api_error as $error}
		<div class='alert alert-danger error'>{$error}</div>
	{/foreach}
	</div>
{/if}

<iframe id="paymentgatewayframe" name="paymentgatewayframe" frameBorder="0" seamless='seamless' style="width:699px; height:1073px;margin: 0 auto;display:block;"></iframe>

<form id="paymentgatewaymoduleform" action="{$url}" method="post" target="paymentgatewayframe">
	<div class="box cheque-box">
		<h3 class="page-subheading">
			{l s= $frontend|cat:' Payment' mod='payment_network'}
		</h3>

		<p class="cheque-indent">
			<strong class="dark">
				{l s='Clicking "I confirm my order" will take you to the Payment Network secure payment website' mod='payment_network'}
			</strong>
		</p>
	</div>

	{foreach $form as $k=>$v}
		<input type="hidden" name="{$k|escape:'html':'UTF-8'}" value="{$v|escape:'html':'UTF-8'}"/>
	{/foreach}

	<p class="cart_navigation clearfix" id="cart_navigation">
	<a class="button-exclusive btn btn-default" href="{$link->getPageLink('order', true, NULL)|escape:'html':'UTF-8'}">
		<i class="icon-chevron-left"></i>{l s='Other payment methods' mod='payment_network'}
		</a>
		<button class="button btn btn-default button-medium" type="submit">
			<span>{l s='I confirm my order' mod='payment_network'}<i class="icon-chevron-right right"></i></span>
		</button>
	</p>
</form>

<script>
	if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
		var frame = document.getElementById('paymentgatewayframe');
		frame.style.height = '1500px';
		frame.style.width = '100%';
	}
	document.getElementById('paymentgatewaymoduleform').submit();
	document.getElementById('paymentgatewaymoduleform').remove();
</script>
{/block}

