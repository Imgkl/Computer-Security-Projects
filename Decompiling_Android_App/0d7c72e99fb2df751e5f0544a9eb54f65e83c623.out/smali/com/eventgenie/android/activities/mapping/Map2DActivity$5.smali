.class Lcom/eventgenie/android/activities/mapping/Map2DActivity$5;
.super Ljava/lang/Object;
.source "Map2DActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/mapping/Map2DActivity;->showDialogDefault(Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

.field final synthetic val$destinationHallName:Ljava/lang/String;

.field final synthetic val$destinationMapItem:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 835
    iput-object p1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$5;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    iput-object p2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$5;->val$destinationMapItem:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    iput-object p3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$5;->val$destinationHallName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 839
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$5;->val$destinationMapItem:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    if-eqz v0, :cond_0

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ NAV: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$5;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;
    invoke-static {v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$600(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ NAV: Warping directly to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$5;->val$destinationMapItem:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$5;->val$destinationMapItem:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getMapId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") currently in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$5;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J
    invoke-static {v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$500(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$5;->val$destinationMapItem:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$5;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J
    invoke-static {v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$500(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$5;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$5;->val$destinationHallName:Ljava/lang/String;

    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$5;->val$destinationMapItem:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    invoke-virtual {v2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v2

    const/4 v4, 0x0

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->changeHalls(Ljava/lang/String;JLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$800(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Ljava/lang/String;JLjava/lang/String;)V

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$5;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    sget v1, Lcom/eventgenie/android/R$string;->map_multihall_warp_you_are_already_there:I

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method
