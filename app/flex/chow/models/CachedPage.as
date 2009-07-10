package chow.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="cached_pages")]
  [Bindable]
  public class CachedPage extends RxModel {
    public static const LABEL:String = "url";

    public var url:String = "";

    public var references:String = "";

    [DateTime]
    public var updatedAt:Date = new Date;

    public var siteId:int = 0;

    [DateTime]
    public var clearedAt:Date = new Date;

    public function CachedPage() {
      super(LABEL);
    }
  }
}
