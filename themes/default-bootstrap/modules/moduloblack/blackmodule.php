<?php
if(!defined('_PS_VERSION_'))
exit;

class blackmodule extends Module{
    public function __construct()
    {
        $this->name = 'blackmodule'; //nombre del módulo el mismo que la carpeta y la clase.
        $this->tab = 'front_office_features'; // pestaña en la que se encuentra en el backoffice.
        $this->version = '1.0.0'; //versión del módulo
        $this->author ='Sandra'; // autor del módulo
        $this->need_instance = 0; //si no necesita cargar la clase en la página módulos,1 si fuese necesario.
        $this->ps_versions_compliancy = array('min' => '1.6', 'max' => _PS_VERSION_); //las versiones con las que el módulo es compatible.
        $this->bootstrap = true; //si usa bootstrap plantilla responsive.
        
        parent::__construct(); //llamada al contructor padre.
        
        $this->displayName = $this->l('blackmodule'); // Nombre del módulo
        $this->description = $this->l('Modulo para las novedades de la línea Black is back'); //Descripción del módulo
        $this->confirmUninstall = $this->l('¿Seguro que desea desinstalarlo?'); //mensaje de alerta al desinstalar el módulo.
    }


    public function install()
    {
        if(!parent::install() || !$this->registerHook('displayTop'))
            return false;
        return true;
    }


    public function uninstall()
    {
        if(!parent::uninstall() || !$this->unregisterHook('displayTop'))
            return false;
        return true;
    }

    public function hookDisplayTop() {
        return $this->display(__FILE__, 'views/templates/hook/blackmodule.tpl');
    }
}



