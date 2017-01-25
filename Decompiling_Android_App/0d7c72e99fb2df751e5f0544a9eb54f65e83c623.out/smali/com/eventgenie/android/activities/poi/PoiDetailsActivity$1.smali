.class Lcom/eventgenie/android/activities/poi/PoiDetailsActivity$1;
.super Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;
.source "PoiDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->onPlaceMarkerClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;

    invoke-direct {p0, p2, p3}, Lcom/eventgenie/android/utils/asynctasks/GetLatLongFromAddressTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4
    .param p1, "result"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 265
    if-eqz p1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;

    # setter for: Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mAddressLatLng:Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {v1, p1}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->access$002(Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 268
    iget-object v1, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mAddress:Ljava/lang/String;
    invoke-static {v1}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->access$100(Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity$1;->cacheWrite(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 270
    iget-object v1, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;

    # invokes: Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getMap()Lcom/eventgenie/android/fragments/mapping/GmMapFragment;
    invoke-static {v1}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->access$200(Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;)Lcom/eventgenie/android/fragments/mapping/GmMapFragment;

    move-result-object v0

    .line 272
    .local v0, "frag":Lcom/eventgenie/android/fragments/mapping/GmMapFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    if-nez v1, :cond_2

    .line 273
    :cond_0
    const-string v1, "^ POI: Map not ready!"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 280
    .end local v0    # "frag":Lcom/eventgenie/android/fragments/mapping/GmMapFragment;
    :cond_1
    :goto_0
    return-void

    .line 277
    .restart local v0    # "frag":Lcom/eventgenie/android/fragments/mapping/GmMapFragment;
    :cond_2
    iget-object v1, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->mAddressLatLng:Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {v1}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->access$000(Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->addMainMarker(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/maps/model/Marker;

    .line 278
    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->focusOnMarker()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 262
    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/poi/PoiDetailsActivity$1;->onPostExecute(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method
