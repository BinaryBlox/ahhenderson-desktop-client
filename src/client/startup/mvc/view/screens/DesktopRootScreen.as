package client.startup.mvc.view.screens

{

	import ahhenderson.core.ui.enums.LayoutDirectionType;
	import client.project.constants.Project_ScreenNameConstants;
	import client.project.mvc.view.screens.HelloWorldScreen;
	import client.startup.mvc.view.screens.drawers.LeftMenuDrawerView;
	import client.startup.mvc.view.supportClasses.AbstractRootScreen;
	import feathers.controls.Drawers;
	import feathers.themes.DesktopFlatTheme;
	import starling.events.Event;


	public class DesktopRootScreen extends AbstractRootScreen {

		public function DesktopRootScreen() {

			super();

		}

		override public function showDefaultScreen():void {

			this.fmgr.navigation.showScreen( Project_ScreenNameConstants.HELLO_WORLD );

		}

		override protected function initializeDrawers( drawers:Drawers ):void {

			var leftMenu:LeftMenuDrawerView = new LeftMenuDrawerView( "Menu" );
			leftMenu.styleNameList.add( DesktopFlatTheme.THEME_NAME_LEFT_AND_RIGHT_DRAWER );

			this.fmgr.navigation.initializeDrawer( LayoutDirectionType.LEFT, leftMenu );

		}

		protected function onMenuButtonTriggered( event:Event ):void {

			this.fmgr.navigation.toggleDrawer( LayoutDirectionType.LEFT );
		}

		override protected function registerScreenViews():void {

			this.fmgr.navigation.addScreen( Project_ScreenNameConstants.HELLO_WORLD, HelloWorldScreen );
		}
	}
}
