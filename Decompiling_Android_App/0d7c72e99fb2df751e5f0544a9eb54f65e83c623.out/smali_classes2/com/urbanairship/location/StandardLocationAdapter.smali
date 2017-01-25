.class Lcom/urbanairship/location/StandardLocationAdapter;
.super Ljava/lang/Object;
.source "StandardLocationAdapter.java"

# interfaces
.implements Lcom/urbanairship/location/LocationAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/location/StandardLocationAdapter$1;,
        Lcom/urbanairship/location/StandardLocationAdapter$AndroidLocationListener;,
        Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;
    }
.end annotation


# static fields
.field private static final PASSIVE_PROVIDER:Ljava/lang/String; = "passive"


# instance fields
.field private final locationManager:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter;->locationManager:Landroid/location/LocationManager;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/location/StandardLocationAdapter;Lcom/urbanairship/location/LocationRequestOptions;)Landroid/location/Criteria;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/location/StandardLocationAdapter;
    .param p1, "x1"    # Lcom/urbanairship/location/LocationRequestOptions;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/urbanairship/location/StandardLocationAdapter;->createCriteria(Lcom/urbanairship/location/LocationRequestOptions;)Landroid/location/Criteria;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/urbanairship/location/StandardLocationAdapter;Landroid/location/Criteria;Lcom/urbanairship/location/LocationRequestOptions;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/location/StandardLocationAdapter;
    .param p1, "x1"    # Landroid/location/Criteria;
    .param p2, "x2"    # Lcom/urbanairship/location/LocationRequestOptions;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/location/StandardLocationAdapter;->getBestProvider(Landroid/location/Criteria;Lcom/urbanairship/location/LocationRequestOptions;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/urbanairship/location/StandardLocationAdapter;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/location/StandardLocationAdapter;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter;->locationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method private createCriteria(Lcom/urbanairship/location/LocationRequestOptions;)Landroid/location/Criteria;
    .locals 4
    .param p1, "options"    # Lcom/urbanairship/location/LocationRequestOptions;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 121
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 123
    .local v0, "criteria":Landroid/location/Criteria;
    invoke-virtual {p1}, Lcom/urbanairship/location/LocationRequestOptions;->getPriority()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 139
    :goto_0
    return-object v0

    .line 125
    :pswitch_0
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 126
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    goto :goto_0

    .line 129
    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 130
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    goto :goto_0

    .line 134
    :pswitch_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 135
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getBestProvider(Landroid/location/Criteria;Lcom/urbanairship/location/LocationRequestOptions;)Ljava/lang/String;
    .locals 5
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "options"    # Lcom/urbanairship/location/LocationRequestOptions;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 150
    invoke-virtual {p2}, Lcom/urbanairship/location/LocationRequestOptions;->getPriority()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 151
    iget-object v2, p0, Lcom/urbanairship/location/StandardLocationAdapter;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, p1, v4}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    .line 152
    .local v0, "availableProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 161
    .end local v0    # "availableProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 155
    .restart local v0    # "availableProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string v2, "passive"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const-string v1, "passive"

    goto :goto_0

    .line 161
    .end local v0    # "availableProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v1, p0, Lcom/urbanairship/location/StandardLocationAdapter;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p1, v4}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public cancelLocationUpdates(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 103
    const-string v0, "StandardLocationAdapter - Canceling location updates."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    .line 105
    return-void
.end method

.method public connect()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public disconnect()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public requestLocationUpdates(Lcom/urbanairship/location/LocationRequestOptions;Landroid/app/PendingIntent;)V
    .locals 11
    .param p1, "options"    # Lcom/urbanairship/location/LocationRequestOptions;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/urbanairship/location/StandardLocationAdapter;->createCriteria(Lcom/urbanairship/location/LocationRequestOptions;)Landroid/location/Criteria;

    move-result-object v8

    .line 70
    .local v8, "criteria":Landroid/location/Criteria;
    iget-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter;->locationManager:Landroid/location/LocationManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v2}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v10

    .line 71
    .local v10, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_0

    .line 72
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    .local v1, "provider":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StandardLocationAdapter - Update listening provider enable/disabled for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/urbanairship/location/StandardLocationAdapter;->locationManager:Landroid/location/LocationManager;

    const-wide v2, 0x7fffffffffffffffL

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 80
    .end local v1    # "provider":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-direct {p0, v8, p1}, Lcom/urbanairship/location/StandardLocationAdapter;->getBestProvider(Landroid/location/Criteria;Lcom/urbanairship/location/LocationRequestOptions;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "bestProvider":Ljava/lang/String;
    invoke-static {v3}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StandardLocationAdapter - Requesting location updates from provider: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/urbanairship/location/StandardLocationAdapter;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p1}, Lcom/urbanairship/location/LocationRequestOptions;->getMinTime()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/urbanairship/location/LocationRequestOptions;->getMinDistance()F

    move-result v6

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    .line 90
    :cond_1
    return-void
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
    .line 109
    new-instance v0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;

    invoke-direct {v0, p0, p1}, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;-><init>(Lcom/urbanairship/location/StandardLocationAdapter;Lcom/urbanairship/location/LocationRequestOptions;)V

    return-object v0
.end method
