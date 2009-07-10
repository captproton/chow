package chow.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="happenings")]
  [Bindable]
  public class Happening extends RxModel {
    public static const LABEL:String = "mode";

    public var mode:String = "";

    public var userId:int = 0;

    public var articleId:int = 0;

    public var title:String = "";

    public var body:String = "";

    [DateTime]
    public var createdAt:Date = new Date;

    [DateTime]
    public var updatedAt:Date = new Date;

    public var author:String = "";

    public var commentId:int = 0;

    public var siteId:int = 0;

    public function Happening() {
      super(LABEL);
    }
  }
}
