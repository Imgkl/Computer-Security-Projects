.class Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;
.super Ljava/lang/Object;
.source "ShowMeetingQuotaDetailsRpcModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShowMeetingQuotaDetailsResponseData"
.end annotation


# instance fields
.field private meetingQuotaType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "meetingQuotaType"
    .end annotation
.end field

.field private meetingTargetAchieved:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "meetingTargetAchieved"
    .end annotation
.end field

.field private meetingTargetAchievedPerEventDay:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "meetingTargetAchievedPerEventDay"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field transient meetingTargetAchievedPerEventDayRes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private meetingTargetPerEvent:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "meetingTargetPerEvent"
    .end annotation
.end field

.field private meetingTargetPerEventDay:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "meetingTargetPerEventDay"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field transient meetingTargetPerEventDayRes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$1;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public getMeetingQuotaType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->meetingQuotaType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMeetingTargetAchieved()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->meetingTargetAchieved:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMeetingTargetAchievedPerEventDay()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v2, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->meetingTargetAchievedPerEventDay:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->meetingTargetAchievedPerEventDay:Ljava/util/ArrayList;

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->meetingTargetAchievedPerEventDayRes:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 146
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->meetingTargetAchievedPerEventDayRes:Ljava/util/Map;

    .line 147
    iget-object v2, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->meetingTargetAchievedPerEventDay:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 148
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->meetingTargetAchievedPerEventDayRes:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 152
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    iget-object v2, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->meetingTargetAchievedPerEventDayRes:Ljava/util/Map;

    return-object v2
.end method

.method public getMeetingTargetPerEvent()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->meetingTargetPerEvent:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMeetingTargetPerEventDay()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v2, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->meetingTargetPerEventDay:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->meetingTargetPerEventDay:Ljava/util/ArrayList;

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->meetingTargetPerEventDayRes:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 166
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->meetingTargetPerEventDayRes:Ljava/util/Map;

    .line 167
    iget-object v2, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->meetingTargetPerEventDay:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 168
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->meetingTargetPerEventDayRes:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 172
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    iget-object v2, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->meetingTargetPerEventDayRes:Ljava/util/Map;

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShowMeetingQuotaDetailsResponseData [meetingQuotaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->meetingQuotaType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", meetingTargetPerEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->meetingTargetPerEvent:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", meetingTargetAchieved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->meetingTargetAchieved:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", meetingTargetPerEventDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->meetingTargetPerEventDay:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", meetingTargetAchievedPerEventDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$ShowMeetingQuotaDetailsResponseData;->meetingTargetAchievedPerEventDay:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
