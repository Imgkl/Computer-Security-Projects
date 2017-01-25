.class Lcom/eventgenie/android/activities/mapping/Map2DActivity$3;
.super Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;
.source "Map2DActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/mapping/Map2DActivity;->onLocationFound(Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

.field final synthetic val$payload:Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;)V
    .locals 1

    .prologue
    .line 635
    iput-object p1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$3;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    iput-object p2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$3;->val$payload:Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;-><init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/activities/mapping/Map2DActivity$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 635
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$3;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/eventgenie/android/ui/mapping2d/MapItemView;",
            "Landroid/widget/AbsoluteLayout$LayoutParams;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 641
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/eventgenie/android/ui/mapping2d/MapItemView;Landroid/widget/AbsoluteLayout$LayoutParams;>;>;"
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->onPostExecute(Ljava/util/List;)V

    .line 643
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$3;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$3;->val$payload:Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->showMyLocation(Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;)V
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$400(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;)V

    .line 644
    return-void
.end method
