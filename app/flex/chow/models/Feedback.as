package chow.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="feedbacks")]
  [Bindable]
  public class Feedback extends RxModel {
    public static const LABEL:String = "siteId";

    public var siteId:int = 0;

    public var name:String = "";

    public var email:String = "";

    public var body:String = "";

    public var key:String = "";

    [DateTime]
    public var createdAt:Date = new Date;

    [DateTime]
    public var updatedAt:Date = new Date;

    public function Feedback() {
      super(LABEL);
    }
  }
}
