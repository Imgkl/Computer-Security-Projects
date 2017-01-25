.class Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerSetupTask;
.super Landroid/os/AsyncTask;
.source "AdvertisingCampaign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdBannerSetupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;


# direct methods
.method private constructor <init>(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerSetupTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;
    .param p2, "x1"    # Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$1;

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerSetupTask;-><init>(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 317
    iget-object v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerSetupTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    iget-object v2, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerSetupTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    iget-object v3, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerSetupTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    # getter for: Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mCampaignId:J
    invoke-static {v3}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->access$600(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)J

    move-result-wide v4

    # invokes: Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->loadAdvertisements(J)Ljava/util/List;
    invoke-static {v2, v4, v5}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->access$700(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;J)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdList:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->access$502(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;Ljava/util/List;)Ljava/util/List;

    .line 318
    iget-object v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerSetupTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    iget-object v2, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerSetupTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    # getter for: Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdList:Ljava/util/List;
    invoke-static {v2}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->access$500(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    # setter for: Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertisementCount:I
    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->access$802(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;I)I

    .line 321
    iget-object v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerSetupTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    # getter for: Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertisementCount:I
    invoke-static {v1}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->access$800(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)I

    move-result v1

    if-lez v1, :cond_0

    .line 322
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 328
    .local v0, "res":Ljava/lang/Boolean;
    :goto_0
    return-object v0

    .line 324
    .end local v0    # "res":Ljava/lang/Boolean;
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .restart local v0    # "res":Ljava/lang/Boolean;
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 313
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerSetupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerSetupTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    # setter for: Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mIsValid:Z
    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->access$902(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;Z)Z

    .line 335
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerSetupTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    # getter for: Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mIsValid:Z
    invoke-static {v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->access$900(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerSetupTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    # invokes: Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->initAdvertisementIndex()V
    invoke-static {v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->access$1000(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)V

    .line 337
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerSetupTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    # invokes: Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->showAdvertisement()V
    invoke-static {v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->access$200(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)V

    .line 338
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerSetupTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    iget-object v0, v0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mCallback:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerSetupTask;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    iget-object v0, v0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mCallback:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;

    invoke-interface {v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;->onAfterAdvertisementCampaignSetup()V

    .line 342
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 313
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerSetupTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
