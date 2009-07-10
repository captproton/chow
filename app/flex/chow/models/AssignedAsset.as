package chow.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="assigned_assets")]
  [Bindable]
  public class AssignedAsset extends RxModel {
    public static const LABEL:String = "articleId";

    public var articleId:int = 0;

    public var assetId:int = 0;

    public var position:int = 0;

    public var label:String = "";

    public var active:Boolean = false;

    [DateTime]
    public var createdAt:Date = new Date;

    [DateTime]
    public var updatedAt:Date = new Date;

    public function AssignedAsset() {
      super(LABEL);
    }
  }
}
