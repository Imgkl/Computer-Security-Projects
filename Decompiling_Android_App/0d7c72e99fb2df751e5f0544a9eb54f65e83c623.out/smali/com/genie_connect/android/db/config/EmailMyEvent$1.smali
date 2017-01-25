.class Lcom/genie_connect/android/db/config/EmailMyEvent$1;
.super Ljava/lang/Object;
.source "EmailMyEvent.java"

# interfaces
.implements Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genie_connect/android/db/config/EmailMyEvent;->getSubsessionToEmailWidget(JZ)Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genie_connect/android/db/config/EmailMyEvent;

.field final synthetic val$loggedIn:Z

.field final synthetic val$namespace:J


# direct methods
.method constructor <init>(Lcom/genie_connect/android/db/config/EmailMyEvent;ZJ)V
    .locals 1

    .prologue
    .line 67
    iput-object p1, p0, Lcom/genie_connect/android/db/config/EmailMyEvent$1;->this$0:Lcom/genie_connect/android/db/config/EmailMyEvent;

    iput-boolean p2, p0, Lcom/genie_connect/android/db/config/EmailMyEvent$1;->val$loggedIn:Z

    iput-wide p3, p0, Lcom/genie_connect/android/db/config/EmailMyEvent$1;->val$namespace:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform()Lorg/apache/http/NameValuePair;
    .locals 6

    .prologue
    .line 71
    iget-boolean v2, p0, Lcom/genie_connect/android/db/config/EmailMyEvent$1;->val$loggedIn:Z

    if-eqz v2, :cond_0

    .line 72
    const/4 v1, 0x0

    .line 77
    .local v1, "nvp":Lorg/apache/http/NameValuePair;
    :goto_0
    return-object v1

    .line 74
    .end local v1    # "nvp":Lorg/apache/http/NameValuePair;
    :cond_0
    iget-object v2, p0, Lcom/genie_connect/android/db/config/EmailMyEvent$1;->this$0:Lcom/genie_connect/android/db/config/EmailMyEvent;

    # getter for: Lcom/genie_connect/android/db/config/EmailMyEvent;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-static {v2}, Lcom/genie_connect/android/db/config/EmailMyEvent;->access$000(Lcom/genie_connect/android/db/config/EmailMyEvent;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v3}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/genie_connect/android/db/config/EmailMyEvent$1;->val$namespace:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/genie_connect/android/db/access/Udm;->favouritesGet(Ljava/lang/String;J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 75
    .local v0, "c":Landroid/database/Cursor;
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/genie_connect/android/db/config/EmailMyEvent;->cursorToString(Landroid/database/Cursor;)Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/db/config/EmailMyEvent;->access$100(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "nvp":Lorg/apache/http/NameValuePair;
    goto :goto_0
.end method
