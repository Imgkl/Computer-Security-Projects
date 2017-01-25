.class Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;
.super Landroid/os/AsyncTask;
.source "QRReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommitToDatabaseTask"
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
.field private final mEntityId:Ljava/lang/Long;

.field private final mEntityType:Ljava/lang/String;

.field private final mNamespace:J

.field private final mQrCodeLabel:Ljava/lang/String;

.field private final mQrCodePayload:Ljava/lang/String;

.field private final mQrCodeType:Ljava/lang/String;

.field final synthetic this$0:Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;


# direct methods
.method public constructor <init>(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;Lcom/eventgenie/android/utils/genieintent/Deeplink;)V
    .locals 2
    .param p2, "code"    # Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;
    .param p3, "deeplink"    # Lcom/eventgenie/android/utils/genieintent/Deeplink;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->this$0:Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 653
    invoke-virtual {p2}, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->getGenieCodeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mQrCodeType:Ljava/lang/String;

    .line 654
    invoke-virtual {p2}, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->getCodeAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mQrCodePayload:Ljava/lang/String;

    .line 655
    invoke-virtual {p3}, Lcom/eventgenie/android/utils/genieintent/Deeplink;->getEntityId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mEntityId:Ljava/lang/Long;

    .line 656
    invoke-virtual {p3}, Lcom/eventgenie/android/utils/genieintent/Deeplink;->getEntityName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mEntityType:Ljava/lang/String;

    .line 657
    invoke-virtual {p1}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mNamespace:J

    .line 658
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mQrCodeLabel:Ljava/lang/String;

    .line 659
    return-void
.end method

.method public constructor <init>(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;Lcom/eventgenie/android/utils/qrcode/containers/QRCodeGenieIntent;)V
    .locals 2
    .param p2, "code"    # Lcom/eventgenie/android/utils/qrcode/containers/QRCodeGenieIntent;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->this$0:Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 662
    const-string v0, "genie-genie-intent-view"

    iput-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mQrCodeType:Ljava/lang/String;

    .line 663
    invoke-virtual {p2}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeGenieIntent;->getCodeAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mQrCodePayload:Ljava/lang/String;

    .line 664
    invoke-virtual {p2}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeGenieIntent;->getGenieIntent()Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getEntityId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mEntityId:Ljava/lang/Long;

    .line 665
    invoke-virtual {p2}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeGenieIntent;->getGenieIntent()Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mEntityType:Ljava/lang/String;

    .line 666
    invoke-virtual {p2}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeGenieIntent;->getGenieIntent()Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->getNamespace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mNamespace:J

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mQrCodeLabel:Ljava/lang/String;

    .line 668
    return-void
.end method

.method public constructor <init>(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "qrCode"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "displayLabel"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 670
    iput-object p1, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->this$0:Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 671
    iput-object p4, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mQrCodeLabel:Ljava/lang/String;

    .line 672
    iput-object p2, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mQrCodePayload:Ljava/lang/String;

    .line 673
    iput-object p3, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mQrCodeType:Ljava/lang/String;

    .line 674
    iput-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mEntityId:Ljava/lang/Long;

    .line 675
    iput-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mEntityType:Ljava/lang/String;

    .line 676
    invoke-virtual {p1}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mNamespace:J

    .line 677
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 681
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mEntityId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mEntityType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->this$0:Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    # getter for: Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-static {v0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->access$600(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v1

    iget-wide v2, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mNamespace:J

    iget-object v4, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mQrCodePayload:Ljava/lang/String;

    iget-object v5, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mQrCodeType:Ljava/lang/String;

    iget-object v6, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mEntityType:Ljava/lang/String;

    iget-object v7, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mEntityId:Ljava/lang/Long;

    invoke-virtual/range {v1 .. v7}, Lcom/genie_connect/android/db/access/Udm;->qrCodeAdd(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 684
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->this$0:Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;

    # getter for: Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-static {v0}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;->access$600(Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v1

    iget-wide v2, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mNamespace:J

    iget-object v4, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mQrCodePayload:Ljava/lang/String;

    iget-object v5, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mQrCodeType:Ljava/lang/String;

    iget-object v6, p0, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->mQrCodeLabel:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/genie_connect/android/db/access/Udm;->qrCodeAdd(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 643
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/qrcodes/QRReaderActivity$CommitToDatabaseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
