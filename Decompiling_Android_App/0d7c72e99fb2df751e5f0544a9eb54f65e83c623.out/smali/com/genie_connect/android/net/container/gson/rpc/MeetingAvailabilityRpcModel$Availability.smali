.class public Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;
.super Ljava/lang/Object;
.source "MeetingAvailabilityRpcModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Availability"
.end annotation


# instance fields
.field private eventDay:Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eventDay"
    .end annotation
.end field

.field private timeSlots:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timeSlots"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/android/net/container/gson/objects/TimeSlotGsonModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventDay()Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;->eventDay:Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;

    return-object v0
.end method

.method public getTimeSlots()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/android/net/container/gson/objects/TimeSlotGsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;->timeSlots:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MeetingAvailabilityResponseData [eventDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;->eventDay:Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeSlots="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;->timeSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
