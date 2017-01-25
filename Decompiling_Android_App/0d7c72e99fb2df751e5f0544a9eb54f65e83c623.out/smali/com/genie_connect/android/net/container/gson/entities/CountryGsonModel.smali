.class public Lcom/genie_connect/android/net/container/gson/entities/CountryGsonModel;
.super Lcom/genie_connect/android/net/container/gson/EntityGsonModel;
.source "CountryGsonModel.java"


# instance fields
.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
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
.method public getEntity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "countries"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/CountryGsonModel;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/CountryGsonModel;->name:Ljava/lang/String;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/CountryGsonModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountryGsonModel [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/CountryGsonModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
