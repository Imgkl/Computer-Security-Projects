.class Lcom/urbanairship/location/FusedLocationAdapter;
.super Ljava/lang/Object;
.source "FusedLocationAdapter.java"

# interfaces
.implements Lcom/urbanairship/location/LocationAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest;
    }
.end annotation


# instance fields
.field private client:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/urbanairship/location/FusedLocationAdapter;->context:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/location/FusedLocationAdapter;Lcom/urbanairship/location/LocationRequestOptions;)Lcom/google/android/gms/location/LocationRequest;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/location/FusedLocationAdapter;
    .param p1, "x1"    # Lcom/urbanairship/location/LocationRequestOptions;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/urbanairship/location/FusedLocationAdapter;->createLocationRequest(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/urbanairship/location/FusedLocationAdapter;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/location/FusedLocationAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/urbanairship/location/FusedLocationAdapter;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method private createLocationRequest(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/google/android/gms/location/LocationRequest;
    .locals 4
    .param p1, "settings"    # Lcom/urbanairship/location/LocationRequestOptions;

    .prologue
    .line 134
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    invoke-virtual {p1}, Lcom/urbanairship/location/LocationRequestOptions;->getMinTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    invoke-virtual {p1}, Lcom/urbanairship/location/LocationRequestOptions;->getMinDistance()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 140
    .local v0, "locationRequest":Lcom/google/android/gms/location/LocationRequest;
    invoke-virtual {p1}, Lcom/urbanairship/location/LocationRequestOptions;->getPriority()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 155
    :goto_0
    return-object v0

    .line 142
    :pswitch_0
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    goto :goto_0

    .line 145
    :pswitch_1
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    goto :goto_0

    .line 148
    :pswitch_2
    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    goto :goto_0

    .line 151
    :pswitch_3
    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public cancelLocationUpdates(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/urbanairship/location/FusedLocationAdapter;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/location/FusedLocationAdapter;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    :cond_0
    const-string v0, "FusedLocationAdapter - Adapter is not connected. Unable to cancel location updates."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v0, "FusedLocationAdapter - Canceling updates."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/urbanairship/location/FusedLocationAdapter;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;

    goto :goto_0
.end method

.method public connect()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 70
    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 73
    .local v3, "semaphore":Ljava/util/concurrent/Semaphore;
    :try_start_0
    iget-object v5, p0, Lcom/urbanairship/location/FusedLocationAdapter;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    .line 74
    .local v2, "playServicesStatus":I
    if-eqz v2, :cond_0

    .line 75
    const-string v5, "FusedLocationAdapter - Google Play services is currently unavailable, unable to connect for fused location."

    invoke-static {v5}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v2    # "playServicesStatus":I
    :goto_0
    return v4

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FusedLocationAdapter - Google Play services is currently unavailable, unable to connect for fused location. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v2    # "playServicesStatus":I
    :cond_0
    new-instance v5, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v6, p0, Lcom/urbanairship/location/FusedLocationAdapter;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v6, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v5

    new-instance v6, Lcom/urbanairship/location/FusedLocationAdapter$2;

    invoke-direct {v6, p0, v3}, Lcom/urbanairship/location/FusedLocationAdapter$2;-><init>(Lcom/urbanairship/location/FusedLocationAdapter;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v5

    new-instance v6, Lcom/urbanairship/location/FusedLocationAdapter$1;

    invoke-direct {v6, p0, v3}, Lcom/urbanairship/location/FusedLocationAdapter$1;-><init>(Lcom/urbanairship/location/FusedLocationAdapter;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v5

    iput-object v5, p0, Lcom/urbanairship/location/FusedLocationAdapter;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 107
    iget-object v5, p0, Lcom/urbanairship/location/FusedLocationAdapter;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v5}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 110
    :try_start_1
    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    iget-object v4, p0, Lcom/urbanairship/location/FusedLocationAdapter;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v4}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v4

    goto :goto_0

    .line 111
    :catch_1
    move-exception v1

    .line 112
    .local v1, "ex":Ljava/lang/InterruptedException;
    const-string v5, "FusedLocationAdapter - Exception while connecting to fused location"

    invoke-static {v5, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    iget-object v5, p0, Lcom/urbanairship/location/FusedLocationAdapter;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v5}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/urbanairship/location/FusedLocationAdapter;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/urbanairship/location/FusedLocationAdapter;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 125
    :cond_0
    return-void
.end method

.method public requestLocationUpdates(Lcom/urbanairship/location/LocationRequestOptions;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "options"    # Lcom/urbanairship/location/LocationRequestOptions;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/urbanairship/location/FusedLocationAdapter;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/urbanairship/location/FusedLocationAdapter;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    :cond_0
    const-string v1, "FusedLocationAdapter - Adapter is not connected. Unable to request location updates."

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_1
    const-string v1, "FusedLocationAdapter - Requesting updates."

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/urbanairship/location/FusedLocationAdapter;->createLocationRequest(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 65
    .local v0, "locationRequest":Lcom/google/android/gms/location/LocationRequest;
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, p0, Lcom/urbanairship/location/FusedLocationAdapter;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0, p2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;

    goto :goto_0
.end method

.method public requestSingleLocation(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/urbanairship/PendingResult;
    .locals 1
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
    .line 38
    iget-object v0, p0, Lcom/urbanairship/location/FusedLocationAdapter;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/location/FusedLocationAdapter;->client:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    const-string v0, "FusedLocationAdapter - Adapter is not connected. Unable to request single location."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest;

    invoke-direct {v0, p0, p1}, Lcom/urbanairship/location/FusedLocationAdapter$SingleLocationRequest;-><init>(Lcom/urbanairship/location/FusedLocationAdapter;Lcom/urbanairship/location/LocationRequestOptions;)V

    goto :goto_0
.end method
