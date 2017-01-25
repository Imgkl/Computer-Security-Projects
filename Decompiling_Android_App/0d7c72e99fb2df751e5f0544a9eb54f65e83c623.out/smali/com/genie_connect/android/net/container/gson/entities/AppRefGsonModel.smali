.class public Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;
.super Lcom/genie_connect/android/net/container/gson/EntityGsonModel;
.source "AppRefGsonModel.java"


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "apprefs"


# instance fields
.field private app:Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app"
    .end annotation
.end field

.field private eventEndDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eventEndDate"
    .end annotation
.end field

.field private eventLocation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eventLocation"
    .end annotation
.end field

.field private eventStartDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eventStartDate"
    .end annotation
.end field

.field private holdingPageHTML:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "holdingPageHTML"
    .end annotation
.end field

.field private iconUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iconUrl"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private isAvailable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isAvailable"
    .end annotation
.end field

.field private isFeatured:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isFeatured"
    .end annotation
.end field

.field private isUsingHoldingPage:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isUsingHoldingPage"
    .end annotation
.end field

.field private liveStatus:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "liveStatus"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private permissionGroup:Lcom/genie_connect/android/net/container/gson/entities/PermissiongroupGsonModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "permissionGroup"
    .end annotation
.end field

.field private scheduledDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scheduledDate"
    .end annotation
.end field

.field private scheduledLiveStatus:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scheduledLiveStatus"
    .end annotation
.end field

.field private strapLine:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "strapLine"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/EntityGsonModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp()Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->app:Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    invoke-direct {v0}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->app:Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->app:Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    return-object v0
.end method

.method public getEntity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    const-string v0, "apprefs"

    return-object v0
.end method

.method public getEventEndDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->eventEndDate:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->eventEndDate:Ljava/lang/String;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->eventEndDate:Ljava/lang/String;

    return-object v0
.end method

.method public getEventLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->eventLocation:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 154
    const-string v0, ""

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->eventLocation:Ljava/lang/String;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->eventLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getEventStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->eventStartDate:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->eventStartDate:Ljava/lang/String;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->eventStartDate:Ljava/lang/String;

    return-object v0
.end method

.method public getHoldingPageHTML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->holdingPageHTML:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 178
    const-string v0, ""

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->holdingPageHTML:Ljava/lang/String;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->holdingPageHTML:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->iconUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->iconUrl:Ljava/lang/String;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->id:J

    return-wide v0
.end method

.method public getIsAvailable()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->isAvailable:Z

    return v0
.end method

.method public getIsFeatured()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->isFeatured:Z

    return v0
.end method

.method public getIsUsingHoldingPage()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->isUsingHoldingPage:Z

    return v0
.end method

.method public getLiveStatus()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->liveStatus:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->name:Ljava/lang/String;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionGroup()Lcom/genie_connect/android/net/container/gson/entities/PermissiongroupGsonModel;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->permissionGroup:Lcom/genie_connect/android/net/container/gson/entities/PermissiongroupGsonModel;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/genie_connect/android/net/container/gson/entities/PermissiongroupGsonModel;

    invoke-direct {v0}, Lcom/genie_connect/android/net/container/gson/entities/PermissiongroupGsonModel;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->permissionGroup:Lcom/genie_connect/android/net/container/gson/entities/PermissiongroupGsonModel;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->permissionGroup:Lcom/genie_connect/android/net/container/gson/entities/PermissiongroupGsonModel;

    return-object v0
.end method

.method public getScheduledDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->scheduledDate:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->scheduledDate:Ljava/lang/String;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->scheduledDate:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduledLiveStatus()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->scheduledLiveStatus:J

    return-wide v0
.end method

.method public getStrapLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->strapLine:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->strapLine:Ljava/lang/String;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppRefGsonModel;->strapLine:Ljava/lang/String;

    return-object v0
.end method
