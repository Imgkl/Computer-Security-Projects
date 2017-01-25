.class public Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;
.super Lcom/genie_connect/android/net/container/gson/EntityGsonModel;
.source "EventDayGsonModel.java"


# instance fields
.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private runningTime:Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "runningTime"
    .end annotation
.end field

.field private timezoneOffset:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timezoneOffset"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/EntityGsonModel;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/EntityGsonModel;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;->name:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Luk/co/alt236/easycursor/EasyCursor;)V
    .locals 1
    .param p1, "c"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/EntityGsonModel;-><init>()V

    .line 60
    const-string v0, "name"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;->name:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;-><init>(Luk/co/alt236/easycursor/EasyCursor;)V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;->runningTime:Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;

    .line 62
    return-void
.end method


# virtual methods
.method public getEntity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "eventdays"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRunningTime()Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;->runningTime:Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;

    return-object v0
.end method

.method public getTimezoneOffset()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;->timezoneOffset:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventDayGsonModel [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", runningTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;->runningTime:Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timezoneOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;->timezoneOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
