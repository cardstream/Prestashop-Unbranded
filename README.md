# README

# Contents

- Introduction
- Prerequisites
- Rebranding
- Installing the payment module
- License

# Introduction

This Prestashop module provides an easy method to integrate with the payment gateway.
 - Supports versions: **1.7 - 1.7.56**

# Prerequisites

- None

> Please note that we can only offer support for the Module itself. While every effort has been made to ensure the payment module is complete and bug free, we cannot guarentee normal functionality if unsupported changes are made.

# Rebranding

To rebrand this module as your own, please complete the following steps:

1. In file `httpdocs/modules/paymentnetwork/paymentnetwork.php` change the following to match that which we provide:
	- Line 15: `*  @author    Support <support@paymentnetwork.com>` to match your support email
	- Line 37: `const REDIRECT_NOTICE = 'You will be redirected to the Payment Gateway for payment';` changing Payment Gateway to your brand name
	- Line 40: `const DIRECT_URL = 'https://gateway.example.com/direct/';` changing gateway.example.com to your gateway url
	- Line 41: `const HOSTED_URL = 'https://gateway.example.com/hosted/';` changing gateway.example.com to your gateway url
	- Line 44: `const HOSTED_URL_MODAL = 'https://gateway.example.com/hosted/modal';` changing gateway.example.com to your gateway url
	- Line 66: `$this->displayName            = 'Payment Network Gateway';` changing Payment Network Gateway to your brand name
	- Line 67: `$this->description            = $this->l('Process payments with Payment Network');` changing Payment Network to your brand name
2. In file `httpdocs/modules/paymentnetwork/config.xml` change the following
	- Line 6: `<description><![CDATA[Process payments with Payment Network]]></description>` changing Payment Network to your brand name
	- Line 7: `<author><![CDATA[Payment Network]]></author>` changing Payment Network to your brand name
3. Replace the file `httpdocs/modules/paymentnetwork/logo.gif` with your own logo in gif format
4. When downloading as a zip file, you can right-click and rename to remove the `Unbranded` text from the filename.

# Installing and configuring the module

1. Copy the contents of the httpdocs folder into your root PrestaShop directory. If you are asked if you want to replace any existing files, click “Yes”.
2. Log in to the Admin area of PrestaShop, then from the left menu, click Modules and then 'Modules Catalog'. Next, from the search box start typing "PaymentNetwork" and when the module shows up below (follow the second paragraph if this does not occur); Click 'Install'. The page should automatically refresh when the module installs. Clicking on 'Configure' will automatically direct you to the module settings.
3. From here, enter your Merchant ID, Currency Code, Country ID and Passphrase. In the 'Frontend' box, enter a sentence asking your customer to pay with PaymentNetwork, i.e. "Process payments with PaymentNetwork", or "PaymentNetwork".
4. Whilst in the module settings, go to 'Manage Hooks' at the top right of the page. Then go to 'Transplant a module' at the top right, select 'PaymentNetwork Payment Gateway' as the module and transplant it to 'displayOrderConfirmation'. Repeat the latter to additionally add the 'displayPaymentReturn' hook.
5. Click 'Save Changes'.


License
----
MIT
