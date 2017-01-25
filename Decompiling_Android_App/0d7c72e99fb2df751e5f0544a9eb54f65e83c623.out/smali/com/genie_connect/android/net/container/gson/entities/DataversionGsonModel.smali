.class public Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;
.super Lcom/genie_connect/android/net/container/gson/EntityGsonModel;
.source "DataversionGsonModel.java"


# instance fields
.field private approximateJsonSize:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "approximateJsonSize"
    .end annotation
.end field

.field private approximatePlistSize:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "approximatePlistSize"
    .end annotation
.end field

.field private fileFormatVersionJson:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fileFormatVersionJson"
    .end annotation
.end field

.field private liveStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "liveStatus"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private scheduledDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scheduledDate"
    .end annotation
.end field

.field private timestamp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/EntityGsonModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getApproximateJsonSize()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->approximateJsonSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getApproximatePlistSize()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->approximatePlistSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getEntity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "dataversions"

    return-object v0
.end method

.method public getFileFormatVersionJson()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->fileFormatVersionJson:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLiveStatus()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->liveStatus:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->returnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheduledDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->scheduledDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataversionGsonModel [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", liveStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->liveStatus:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", approximateJsonSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->approximateJsonSize:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", approximatePlistSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->approximatePlistSize:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scheduledDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->scheduledDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileFormatVersionJson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->fileFormatVersionJson:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
