package chow.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="palooza_plugins")]
  [Bindable]
  public class PaloozaPlugin extends RxModel {
    public static const LABEL:String = "name";

    public var name:String = "";

    public var options:String = "";

    public var type:String = "";

    public function PaloozaPlugin() {
      super(LABEL);
    }
  }
}
