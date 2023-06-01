{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}

{include file='_partials/helpers.tpl'}

<!doctype html>
<html lang="{$language.locale}">

  <head>
    {block name='head'}
      {include file='_partials/head.tpl'}
    {/block}

    {include file='_partials/facebook-pixel.tpl'}
    {include file='_partials/google-tag-manager-head.tpl'}
  </head>

  <body id="{$page.page_name}" class="{$page.body_classes|classnames}">

    {include file='_partials/google-tag-manager-body.tpl'}
    {block name='hook_after_body_opening_tag'}
      {hook h='displayAfterBodyOpeningTag'}
    {/block}

    <main>
      {block name='product_activation'}
        {include file='catalog/_partials/product-activation.tpl'}
      {/block}

      <header id="header">
        {block name='header'}
          {include file='_partials/header.tpl'}
        {/block}
      </header>

      <section id="intro-records">
            <div class="">
                <div class="wrapper">
                    <div class="side intro-left">
                        <div class="intro-title-desc">
                            <div class="intro-title">
                                {l s='HARK Records vend des vinyles neufs et d\'occasion' d='Modules.Hsnewestproducts.Shop'}
                            </div>
                            <div class="intro-description">
                                {l s='Ouverture le 13 juin' d='Modules.Hsnewestproducts.Shop'}
                                <br>
                                {l s='76 Rue Léon Front, Paris 11e' d='Modules.Hsnewestproducts.Shop'}
                            </div>
                        </div>
                    </div>
                    <div class="side intro-right">
                        <figure>
                            <img src="{$urls.img_url}homepage/3.jpg" alt="">
                        </figure>
                    </div>
                </div>
            </div>
      </section>

      <section id="events-records">
          {widget name="hrec_events"}
      </section>

      <section id="outro-records">
            {widget name="ps_imageslider" hook="displayHome"}
      </section>

      <footer id="footer" class="js-footer">
        {block name="footer"}
          {include file="_partials/footer.tpl"}
        {/block}
      </footer>

    </main>

    {block name='javascript_bottom'}
      {include file="_partials/javascript.tpl" javascript=$javascript.bottom}
    {/block}

    {block name='hook_before_body_closing_tag'}
      {hook h='displayBeforeBodyClosingTag'}
    {/block}
  </body>

</html>
