.class public Lcom/eventgenie/android/fragments/mapping/GmMapFragment;
.super Lcom/google/android/gms/maps/SupportMapFragment;
.source "GmMapFragment.java"


# instance fields
.field private mMainMarker:Lcom/google/android/gms/maps/model/Marker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/maps/SupportMapFragment;-><init>()V

    return-void
.end method

.method private static getCamera(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 2
    .param p0, "position"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 186
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    const/high16 v1, 0x41780000    # 15.5f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addMainMarker(Landroid/location/Address;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/maps/model/Marker;
    .locals 10
    .param p1, "address"    # Landroid/location/Address;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "snippet"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 64
    :goto_0
    return-object v1

    .line 57
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v8

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->mMainMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 62
    iget-object v1, p0, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->mMainMarker:Lcom/google/android/gms/maps/model/Marker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public addMainMarker(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/maps/model/Marker;
    .locals 4
    .param p1, "latlng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "snippet"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 79
    :goto_0
    return-object v1

    .line 72
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->mMainMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 77
    iget-object v1, p0, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->mMainMarker:Lcom/google/android/gms/maps/model/Marker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public animateTo(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getCamera(Landroid/location/Location;)Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 86
    .local v0, "camera":Lcom/google/android/gms/maps/model/CameraPosition;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 90
    .end local v0    # "camera":Lcom/google/android/gms/maps/model/CameraPosition;
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v1, "^ GMMAP: Location is Null!"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ensurePointVisibility(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "pointArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    if-nez p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ GMMAP: ensurePointVisibility() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 98
    invoke-static {}, Lcom/google/android/gms/maps/model/LatLngBounds;->builder()Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v0

    .line 101
    .local v0, "builder":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/LatLng;

    .line 102
    .local v3, "point":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    goto :goto_1

    .line 105
    .end local v3    # "point":Lcom/google/android/gms/maps/model/LatLng;
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v4

    const/16 v5, 0x32

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    .line 107
    .local v1, "camera":Lcom/google/android/gms/maps/CameraUpdate;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0
.end method

.method public focusOnMarker()V
    .locals 4

    .prologue
    .line 111
    iget-object v1, p0, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->mMainMarker:Lcom/google/android/gms/maps/model/Marker;

    if-nez v1, :cond_0

    .line 112
    const-string v1, "^ GMMAP: focusOnMarker() Marker is Null!"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->mMainMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getCamera(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 116
    .local v0, "camera":Lcom/google/android/gms/maps/model/CameraPosition;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    goto :goto_0
.end method

.method public focusOnMyLocation()V
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getMyLocation()Landroid/location/Location;

    move-result-object v0

    .line 122
    .local v0, "myLocation":Landroid/location/Location;
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->animateTo(Landroid/location/Location;)V

    .line 123
    return-void
.end method

.method public focusOnMyLocationAndCentreMarker()V
    .locals 8

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getMyLocation()Landroid/location/Location;

    move-result-object v1

    .line 127
    .local v1, "myLocation":Landroid/location/Location;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, "coordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    if-eqz v1, :cond_0

    .line 130
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->mMainMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->mMainMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 134
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p0, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->mMainMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v3, p0, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->mMainMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    iget-wide v6, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_1
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->ensurePointVisibility(Ljava/util/ArrayList;)V

    .line 138
    return-void
.end method

.method public getCamera(Landroid/location/Address;)Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 10
    .param p1, "address"    # Landroid/location/Address;

    .prologue
    const/high16 v3, 0x41780000    # 15.5f

    const-wide/16 v8, 0x0

    .line 142
    :try_start_0
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    const/high16 v2, 0x41780000    # 15.5f

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 146
    :goto_0
    return-object v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, v8, v9, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    goto :goto_0
.end method

.method public getCamera(Landroid/location/Location;)Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 159
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    const/high16 v1, 0x41780000    # 15.5f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public getCamera(Ljava/lang/Double;Ljava/lang/Double;)Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 6
    .param p1, "lat"    # Ljava/lang/Double;
    .param p2, "lng"    # Ljava/lang/Double;

    .prologue
    .line 153
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    const/high16 v1, 0x41780000    # 15.5f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    const-string v0, "fixForBug#19211"

    const-string v1, "possibleFixForBug#19211"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-super {p0, p1}, Lcom/google/android/gms/maps/SupportMapFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 169
    return-void
.end method

.method public setIndoorEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setIndoorEnabled(Z)Z

    .line 173
    return-void
.end method

.method public setMapType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 177
    return-void
.end method

.method public setup()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 180
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/mapping/GmMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 183
    return-void
.end method
