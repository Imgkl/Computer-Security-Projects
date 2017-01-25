.class Lcom/urbanairship/location/UALocationProvider;
.super Ljava/lang/Object;
.source "UALocationProvider.java"


# instance fields
.field private adapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/location/LocationAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private connectedAdapter:Lcom/urbanairship/location/LocationAdapter;

.field private isConnected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->adapters:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/location/UALocationProvider;->isConnected:Z

    .line 56
    invoke-static {}, Lcom/urbanairship/google/PlayServicesUtils;->isFusedLocationDepdendencyAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->adapters:Ljava/util/List;

    new-instance v1, Lcom/urbanairship/location/FusedLocationAdapter;

    invoke-direct {v1, p1}, Lcom/urbanairship/location/FusedLocationAdapter;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->adapters:Ljava/util/List;

    new-instance v1, Lcom/urbanairship/location/StandardLocationAdapter;

    invoke-direct {v1, p1}, Lcom/urbanairship/location/StandardLocationAdapter;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method varargs constructor <init>([Lcom/urbanairship/location/LocationAdapter;)V
    .locals 2
    .param p1, "adapters"    # [Lcom/urbanairship/location/LocationAdapter;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->adapters:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/location/UALocationProvider;->isConnected:Z

    .line 64
    iget-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->adapters:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    return-void
.end method


# virtual methods
.method public cancelRequests(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 73
    const-string v2, "UALocationProvider - Canceling location requests."

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/urbanairship/location/UALocationProvider;->adapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/location/LocationAdapter;

    .line 81
    .local v0, "adapter":Lcom/urbanairship/location/LocationAdapter;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UALocationProvider - Canceling location requests for adapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lcom/urbanairship/location/UALocationProvider;->connectedAdapter:Lcom/urbanairship/location/LocationAdapter;

    if-ne v0, v2, :cond_1

    .line 83
    invoke-interface {v0, p1}, Lcom/urbanairship/location/LocationAdapter;->cancelLocationUpdates(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-interface {v0}, Lcom/urbanairship/location/LocationAdapter;->connect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-interface {v0, p1}, Lcom/urbanairship/location/LocationAdapter;->cancelLocationUpdates(Landroid/app/PendingIntent;)V

    .line 86
    invoke-interface {v0}, Lcom/urbanairship/location/LocationAdapter;->disconnect()V

    goto :goto_0

    .line 89
    .end local v0    # "adapter":Lcom/urbanairship/location/LocationAdapter;
    :cond_2
    return-void
.end method

.method public connect()V
    .locals 4

    .prologue
    .line 137
    iget-boolean v2, p0, Lcom/urbanairship/location/UALocationProvider;->isConnected:Z

    if-eqz v2, :cond_0

    .line 153
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/urbanairship/location/UALocationProvider;->adapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/location/LocationAdapter;

    .line 142
    .local v0, "adapter":Lcom/urbanairship/location/LocationAdapter;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UALocationProvider - Attempting to connect to location adapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 143
    invoke-interface {v0}, Lcom/urbanairship/location/LocationAdapter;->connect()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UALocationProvider - Connected to location adapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 145
    iput-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->connectedAdapter:Lcom/urbanairship/location/LocationAdapter;

    .line 152
    .end local v0    # "adapter":Lcom/urbanairship/location/LocationAdapter;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/urbanairship/location/UALocationProvider;->isConnected:Z

    goto :goto_0

    .line 148
    .restart local v0    # "adapter":Lcom/urbanairship/location/LocationAdapter;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UALocationProvider - Failed to connect to location adapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/urbanairship/location/UALocationProvider;->isConnected:Z

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 163
    :cond_0
    const-string v0, "UALocationProvider - Disconnecting from location provider."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->connectedAdapter:Lcom/urbanairship/location/LocationAdapter;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->connectedAdapter:Lcom/urbanairship/location/LocationAdapter;

    invoke-interface {v0}, Lcom/urbanairship/location/LocationAdapter;->disconnect()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->connectedAdapter:Lcom/urbanairship/location/LocationAdapter;

    .line 170
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/location/UALocationProvider;->isConnected:Z

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/urbanairship/location/UALocationProvider;->isConnected:Z

    return v0
.end method

.method public requestLocationUpdates(Lcom/urbanairship/location/LocationRequestOptions;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "options"    # Lcom/urbanairship/location/LocationRequestOptions;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/urbanairship/location/UALocationProvider;->isConnected:Z

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Provider must be connected before making requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->connectedAdapter:Lcom/urbanairship/location/LocationAdapter;

    if-nez v0, :cond_1

    .line 104
    const-string v0, "UALocationProvider - Ignoring request, connected adapter unavailable."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UALocationProvider - Requesting location updates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->connectedAdapter:Lcom/urbanairship/location/LocationAdapter;

    invoke-interface {v0, p1, p2}, Lcom/urbanairship/location/LocationAdapter;->requestLocationUpdates(Lcom/urbanairship/location/LocationRequestOptions;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public requestSingleLocation(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/urbanairship/PendingResult;
    .locals 2
    .param p1, "options"    # Lcom/urbanairship/location/LocationRequestOptions;
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

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/urbanairship/location/UALocationProvider;->isConnected:Z

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Provider must be connected before making requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->connectedAdapter:Lcom/urbanairship/location/LocationAdapter;

    if-nez v0, :cond_1

    .line 125
    const-string v0, "UALocationProvider - Ignoring request, connected adapter unavailable."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UALocationProvider - Requesting single location update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/urbanairship/location/UALocationProvider;->connectedAdapter:Lcom/urbanairship/location/LocationAdapter;

    invoke-interface {v0, p1}, Lcom/urbanairship/location/LocationAdapter;->requestSingleLocation(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/urbanairship/PendingResult;

    move-result-object v0

    goto :goto_0
.end method
