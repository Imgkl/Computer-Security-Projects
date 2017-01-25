.class Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;
.super Landroid/os/AsyncTask;
.source "FindPeopleFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetProfileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private groups:Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

.field private meetingCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

.field private meetingQuotaDetails:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

.field private messageCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

.field private profile:Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

.field final synthetic this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private calcMeetingCredits()Ljava/lang/Integer;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 598
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->meetingCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    invoke-static {v0}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->isValid(Lcom/genie_connect/common/net/container/NetworkResultGsonContent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->meetingCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    invoke-virtual {v0}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->meetingCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    invoke-virtual {v0}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel;->getData()Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;->getTotalCreditAvailable()Ljava/lang/Integer;

    move-result-object v0

    .line 605
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 602
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 605
    goto :goto_0
.end method

.method private calcMeetingDebits()Ljava/lang/Integer;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 609
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->meetingCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    invoke-static {v0}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->isValid(Lcom/genie_connect/common/net/container/NetworkResultGsonContent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->meetingCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    invoke-virtual {v0}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->meetingCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    invoke-virtual {v0}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel;->getData()Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;->getMeetingDebits()Ljava/lang/Integer;

    move-result-object v0

    .line 616
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 613
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 616
    goto :goto_0
.end method

.method private calcMessageCredits()Ljava/lang/Integer;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 620
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->messageCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    invoke-static {v0}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->isValid(Lcom/genie_connect/common/net/container/NetworkResultGsonContent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->messageCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    invoke-virtual {v0}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->messageCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    invoke-virtual {v0}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel;->getData()Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;->getTotalCreditAvailable()Ljava/lang/Integer;

    move-result-object v0

    .line 627
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 624
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 627
    goto :goto_0
.end method

.method private getMeetingQuotaTypeJson()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ FINDP: QUOTA: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->meetingQuotaDetails:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 648
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->meetingQuotaDetails:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    invoke-static {v1}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->isValid(Lcom/genie_connect/common/net/container/NetworkResultGsonContent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->meetingQuotaDetails:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    invoke-virtual {v1}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 651
    .local v0, "gson":Lcom/google/gson/Gson;
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->meetingQuotaDetails:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    invoke-virtual {v1}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    .line 656
    .end local v0    # "gson":Lcom/google/gson/Gson;
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    .line 653
    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 656
    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 632
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    invoke-direct {v0, v2}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;)V

    .line 633
    .local v0, "net":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    new-instance v1, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;

    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    invoke-direct {v1, v2}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;-><init>(Landroid/content/Context;)V

    .line 635
    .local v1, "netMeetings":Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;
    invoke-virtual {v0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getUserProfile()Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->profile:Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .line 636
    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->profile:Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    invoke-virtual {v2}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 637
    invoke-virtual {v1}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->getMeetingQuotaType()Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->meetingQuotaDetails:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    .line 638
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITORGROUP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getEntityCollection(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->groups:Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .line 639
    invoke-virtual {v1}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->getRemainingMeetingCredits()Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->meetingCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    .line 640
    invoke-virtual {v1}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->getRemainingMessageCredits()Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->messageCredits:Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    .line 642
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 590
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 661
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    invoke-virtual {v1, v2, v2}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->showIndicator(ZZ)V

    .line 662
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->PROFILE:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    # getter for: Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mCfg:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;
    invoke-static {v3}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->access$200(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;)Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isEnableMyProfile()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 663
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->profile:Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    invoke-virtual {v1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->profile:Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    invoke-virtual {v1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/platform/json/GenieJsonObject;

    invoke-virtual {v1}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->getRawObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 667
    .local v0, "profileObj":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    # setter for: Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mProfile:Lorg/json/JSONObject;
    invoke-static {v1, v0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->access$302(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 668
    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->groups:Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    invoke-virtual {v1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonArray()Lcom/genie_connect/common/platform/json/IJsonArray;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/platform/json/GenieJsonArray;

    invoke-virtual {v1}, Lcom/genie_connect/android/platform/json/GenieJsonArray;->getRawArray()Lorg/json/JSONArray;

    move-result-object v1

    # setter for: Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mGroups:Lorg/json/JSONArray;
    invoke-static {v2, v1}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->access$402(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 669
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    invoke-direct {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->calcMeetingCredits()Ljava/lang/Integer;

    move-result-object v2

    # setter for: Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mMeetingCredits:Ljava/lang/Integer;
    invoke-static {v1, v2}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->access$502(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 670
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    invoke-direct {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->calcMessageCredits()Ljava/lang/Integer;

    move-result-object v2

    # setter for: Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mMessageCredits:Ljava/lang/Integer;
    invoke-static {v1, v2}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->access$602(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 671
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    invoke-direct {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->calcMeetingDebits()Ljava/lang/Integer;

    move-result-object v2

    # setter for: Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mMeetingDebits:Ljava/lang/Integer;
    invoke-static {v1, v2}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->access$702(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 672
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    invoke-direct {p0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->getMeetingQuotaTypeJson()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->mMeetingQuotaDetailsJson:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->access$802(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 673
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/genie_connect/android/security/VisitorLoginManager;->updateVisitorProfile(Lorg/json/JSONObject;)V

    .line 674
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    # invokes: Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->updateUI()V
    invoke-static {v1}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->access$900(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;)V

    .line 683
    .end local v0    # "profileObj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 676
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->profile:Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    invoke-static {v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->getNetworkResultError(Landroid/content/Context;Lcom/genie_connect/common/net/container/NetworkResult;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 681
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->finish()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 590
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$GetProfileTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
