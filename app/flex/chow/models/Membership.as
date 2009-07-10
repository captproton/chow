package chow.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="memberships")]
  [Bindable]
  public class Membership extends RxModel {
    public static const LABEL:String = "siteId";

    public var siteId:int = 0;

    public var userId:int = 0;

    [DateTime]
    public var createdAt:Date = new Date;

    [DateTime]
    public var updatedAt:Date = new Date;

    public var admin:Boolean = false;

    public function Membership() {
      super(LABEL);
    }
  }
}
