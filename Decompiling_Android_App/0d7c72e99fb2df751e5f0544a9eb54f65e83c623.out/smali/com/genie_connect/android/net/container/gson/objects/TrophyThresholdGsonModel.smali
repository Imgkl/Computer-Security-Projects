.class public Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;
.super Lcom/genie_connect/android/net/container/gson/BaseGsonModel;
.source "TrophyThresholdGsonModel.java"


# instance fields
.field private colour:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "colour"
    .end annotation
.end field

.field private icon:Ljava/lang/String;

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private thresholdValue:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thresholdValue"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/BaseGsonModel;-><init>()V

    return-void
.end method

.method public constructor <init>(Luk/co/alt236/easycursor/EasyCursor;)V
    .locals 2
    .param p1, "trophies"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/BaseGsonModel;-><init>()V

    .line 55
    const-string v0, "colour"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;->colour:Ljava/lang/String;

    .line 56
    const-string v0, "name"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;->name:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "thresholdValue"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;->thresholdValue:J

    .line 58
    const-string v0, "icon"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;->icon:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public getColour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;->colour:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getThresholdValue()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;->thresholdValue:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrophyThresholdGsonModel [colour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;->colour:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thresholdValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;->thresholdValue:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
