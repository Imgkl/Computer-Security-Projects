.class public Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;
.super Lcom/genie_connect/android/net/container/gson/BaseGsonModel;
.source "RunningTimeGsonModel.java"


# instance fields
.field private from:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "from"
    .end annotation
.end field

.field private to:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "to"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/BaseGsonModel;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "until"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/BaseGsonModel;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;->from:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;->to:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Luk/co/alt236/easycursor/EasyCursor;)V
    .locals 1
    .param p1, "c"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/BaseGsonModel;-><init>()V

    .line 52
    const-string v0, "runningTime_to"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertFromSqliteToJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;->to:Ljava/lang/String;

    .line 53
    const-string v0, "runningTime_from"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertFromSqliteToJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;->from:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;->to:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RunningTimeGsonModel [from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
