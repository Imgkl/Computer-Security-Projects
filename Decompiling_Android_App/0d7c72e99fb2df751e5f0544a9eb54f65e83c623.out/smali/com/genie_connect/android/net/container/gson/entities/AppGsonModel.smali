.class public Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;
.super Lcom/genie_connect/android/net/container/gson/EntityGsonModel;
.source "AppGsonModel.java"


# instance fields
.field private appName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private appTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private iconURL:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iconUrl"
    .end annotation
.end field

.field private isArchived:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isArchived"
    .end annotation
.end field

.field private liveVersion:Ljava/lang/String;

.field private locale:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locale"
    .end annotation
.end field

.field private namespace:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private stagingVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/EntityGsonModel;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # J
    .param p3, "appTitle"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/EntityGsonModel;-><init>()V

    .line 67
    iput-wide p1, p0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->namespace:J

    .line 68
    iput-object p3, p0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->appTitle:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->appName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->returnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->appTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->returnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "apps"

    return-object v0
.end method

.method public getIconURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->iconURL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->returnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsArchived()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->isArchived:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->liveVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->locale:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->returnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->namespace:J

    return-wide v0
.end method

.method public getStagingVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->stagingVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->appName:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setIconURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconURL"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->iconURL:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setLiveVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "liveVersion"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->liveVersion:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setStagingVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "stagingVersion"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->stagingVersion:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppsGsonModel [namespace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->namespace:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->appTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->iconURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isArchived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->isArchived:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", liveVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->liveVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stagingVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->stagingVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
