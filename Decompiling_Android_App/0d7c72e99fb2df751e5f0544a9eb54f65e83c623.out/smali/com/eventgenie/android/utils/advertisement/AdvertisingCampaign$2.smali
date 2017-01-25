.class Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$2;
.super Ljava/util/TimerTask;
.source "AdvertisingCampaign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$2;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$2;->this$0:Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    # invokes: Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->showAdvertisement()V
    invoke-static {v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->access$200(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)V

    return-void
.end method
