{*
* 2007-2017 PrestaShop
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
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2017 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

{if $block == 1}
	<!-- Block CMS module -->
	{foreach from=$cms_titles key=cms_key item=cms_title}
		<section id="informations_block_left_{$cms_key}" class="block informations_block_left">
			<p class="title_block">
				<a href="{$cms_title.category_link|escape:'html':'UTF-8'}">
					{if !empty($cms_title.name)}{$cms_title.name}{else}{$cms_title.category_name}{/if}
				</a>
			</p>
			<div class="block_content list-block">
				<ul>
					{foreach from=$cms_title.categories item=cms_page}
						{if isset($cms_page.link)}
							<li class="bullet">
								<a href="{$cms_page.link|escape:'html':'UTF-8'}" title="{$cms_page.name|escape:'html':'UTF-8'}">
									{$cms_page.name|escape:'html':'UTF-8'}
								</a>
							</li>
						{/if}
					{/foreach}
					{foreach from=$cms_title.cms item=cms_page}
						{if isset($cms_page.link)}
							<li>
								<a href="{$cms_page.link|escape:'html':'UTF-8'}" title="{$cms_page.meta_title|escape:'html':'UTF-8'}">
									{$cms_page.meta_title|escape:'html':'UTF-8'}
								</a>
							</li>
						{/if}
					{/foreach}
					{if $cms_title.display_store}
						<li>
							<a href="{$link->getPageLink('stores')|escape:'html':'UTF-8'}" title="{l s='Our stores' mod='blockcms'}">
								{l s='Our stores' mod='blockcms'}
							</a>
						</li>
					{/if}
				</ul>
			</div>
		</section>
	{/foreach}
	<!-- /Block CMS module -->
{else}
	<!-- Block CMS module footer -->
	<section class="footer-block" id="block_various_links_footer">
		<!--<h4>{l s='Information' mod='blockcms'}</h4>-->
		<ul class="toggle-footer col-sm-3" style="letter-spacing: .1em;">
			 <li class="col-sm-12" style="padding-bottom: 10px;">
                <a href="http://cursodesarrollo-puesto3.t1.webimpacto.net/index.php?id_cms_category=16&amp;controller=cms&amp;id_lang=1" title="Envíos y entregas">
                Envíos y entregas
                </a>
            </li>
            <li class="col-sm-12" style="padding-bottom: 10px;">
                <a href="http://cursodesarrollo-puesto3.t1.webimpacto.net/index.php?id_cms_category=2&amp;controller=cms&amp;id_lang=1" title="Pedidos y pagos">
                Pedidos y pagos
                </a>
            </li>
            <li class="col-sm-12" style="padding-bottom: 10px;">
                <a href="http://cursodesarrollo-puesto3.t1.webimpacto.net/index.php?id_cms_category=3&amp;controller=cms&amp;id_lang=1" title="Cambios y devoluciones">
                Cambios y devoluciones
                </a>
            </li>
            <li class="col-sm-12" style="padding-bottom: 10px;">
                <a href="http://cursodesarrollo-puesto3.t1.webimpacto.net/index.php?id_cms_category=4&amp;controller=cms&amp;id_lang=1" title="Guía de compra">
                Guía de compra
                </a>
            </li>
		</ul>
		<ul class="toggle-footer col-sm-3" style="letter-spacing: .1em;">
			<li class="col-sm-12" style="padding-bottom: 10px;">
                <a href="http://cursodesarrollo-puesto3.t1.webimpacto.net/index.php?id_cms_category=5&amp;controller=cms&amp;id_lang=1" title="Contacto">
                Contacto
                </a>
            </li>
            <li class="col-sm-12" style="padding-bottom: 10px;">
                <a href="http://cursodesarrollo-puesto3.t1.webimpacto.net/index.php?id_cms_category=6&amp;controller=cms&amp;id_lang=1" title="Estado de mi pedido">
                Estado de mi pedido
                </a>
            </li>
            <li class="col-sm-12" style="padding-bottom: 10px;">
                <a href="http://cursodesarrollo-puesto3.t1.webimpacto.net/index.php?id_cms_category=7&amp;controller=cms&amp;id_lang=1" title="Solicitud de devolución">
                Solicitud de devolución
                </a>
            </li>
            <li class="col-sm-12" style="padding-bottom: 10px;">
                <a href="http://cursodesarrollo-puesto3.t1.webimpacto.net/index.php?id_cms_category=8&amp;controller=cms&amp;id_lang=1" title="Mi cuenta">
                Mi cuenta
                </a>
            </li>
		</ul>
		<ul class="toggle-footer col-sm-3" style="letter-spacing: .1em;">
			<li class="col-sm-12" style="padding-bottom: 10px;">
                <a href="http://cursodesarrollo-puesto3.t1.webimpacto.net/index.php?id_cms_category=9&amp;controller=cms&amp;id_lang=1" title="Tarjeta regalo">
                Tarjeta regalo
                </a>
            </li>
            <li class="col-sm-12" style="padding-bottom: 10px;">
                <a href="http://cursodesarrollo-puesto3.t1.webimpacto.net/index.php?id_cms_category=10&amp;controller=cms&amp;id_lang=1" title="Guía de tallas">
                Guía de tallas
                </a>
            </li>
            <li class="col-sm-12" style="padding-bottom: 10px;">
                <a href="http://cursodesarrollo-puesto3.t1.webimpacto.net/index.php?id_cms_category=11&amp;controller=cms&amp;id_lang=1" title="Cuidado de las joyas">
                Cuidado de las joyas
                </a>
            </li>
            <li class="col-sm-12" style="padding-bottom: 10px;">
                <a href="http://cursodesarrollo-puesto3.t1.webimpacto.net/index.php?id_cms_category=12&amp;controller=cms&amp;id_lang=1" title="Descuentos y promociones">
                Descuentos y promociones
                </a>
            </li>
		</ul>
		<ul class="toggle-footer col-sm-3" style="letter-spacing: .1em;">
			 <li class="col-sm-12" style="padding-bottom: 10px;">
                <a href="http://cursodesarrollo-puesto3.t1.webimpacto.net/index.php?id_cms_category=13&amp;controller=cms&amp;id_lang=1" title="Sobre nosotros">
                Sobre nosotros
                </a>
            </li>
            <li class="col-sm-12" style="padding-bottom: 10px;">
                <a href="http://cursodesarrollo-puesto3.t1.webimpacto.net/index.php?id_cms_category=14&amp;controller=cms&amp;id_lang=1" title="Prensa">
                Prensa
                </a>
            </li>
            <li class="col-sm-12" style="padding-bottom: 10px;">
                <a href="http://cursodesarrollo-puesto3.t1.webimpacto.net/index.php?id_cms_category=15&amp;controller=cms&amp;id_lang=1" title="Propuestas">
                Propuestas
                </a>
            </li>
		</ul>
        

		{$footer_text}
	</section>
	{if $display_poweredby}
	<section class="bottom-footer col-xs-12">
		<div>
			{l s='[1] %3$s %2$s - Ecommerce software by %1$s [/1]' mod='blockcms' sprintf=['PrestaShop™', 'Y'|date, '©'] tags=['<a class="_blank" href="http://www.prestashop.com">'] nocache}
		</div>
	</section>
	{/if}
	<!-- /Block CMS module footer -->
{/if}
