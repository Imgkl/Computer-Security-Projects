.class interface abstract Lcom/urbanairship/location/LocationAdapter;
.super Ljava/lang/Object;
.source "LocationAdapter.java"


# virtual methods
.method public abstract cancelLocationUpdates(Landroid/app/PendingIntent;)V
.end method

.method public abstract connect()Z
.end method

.method public abstract disconnect()V
.end method

.method public abstract requestLocationUpdates(Lcom/urbanairship/location/LocationRequestOptions;Landroid/app/PendingIntent;)V
.end method

.method public abstract requestSingleLocation(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/urbanairship/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/urbanairship/location/LocationRequestOptions;",
            ")",
            "Lcom/urbanairship/PendingResult",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end method
