package client.startup.mvc.view.mediators
{
	import ahhenderson.core.mvc.interfaces.IFacadeMessage;
	
	import avmplus.getQualifiedClassName;
	
	import client.startup.mvc.view.screens.DesktopRootScreen;
	import client.startup.mvc.view.supportClasses.AbstractRootScreenMediator;
	
	public class DesktopRootScreenMediator extends AbstractRootScreenMediator
	{
		public static const NAME:String = getQualifiedClassName( DesktopRootScreenMediator );
		
		public function DesktopRootScreenMediator(component:DesktopRootScreen=null)
		{
			super(NAME, component);
		}
		 
		override public function handleFacadeMessage(message:IFacadeMessage):void{
			
			switch(message.messageId){
				
				default:
					break;
			}
		}
		
		override public function onRegister():void {
			
			try {
				super.onRegister();
				
				startup();
				
				// Show screen after data comes back
				
			} catch ( error:Error ) {
				throw( error );
			}
		}
		
		
		private function get view():DesktopRootScreen {
			
			return component as DesktopRootScreen;
		}
	}
}