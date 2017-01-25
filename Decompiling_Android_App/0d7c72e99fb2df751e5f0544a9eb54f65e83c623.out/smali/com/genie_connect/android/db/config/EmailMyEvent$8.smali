.class Lcom/genie_connect/android/db/config/EmailMyEvent$8;
.super Ljava/lang/Object;
.source "EmailMyEvent.java"

# interfaces
.implements Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genie_connect/android/db/config/EmailMyEvent;->getToEmailWidget(Lcom/genie_connect/android/db/config/GenieWidget;JZ)Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genie_connect/android/db/config/EmailMyEvent;

.field final synthetic val$loggedIn:Z


# direct methods
.method constructor <init>(Lcom/genie_connect/android/db/config/EmailMyEvent;Z)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/genie_connect/android/db/config/EmailMyEvent$8;->this$0:Lcom/genie_connect/android/db/config/EmailMyEvent;

    iput-boolean p2, p0, Lcom/genie_connect/android/db/config/EmailMyEvent$8;->val$loggedIn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform()Lorg/apache/http/NameValuePair;
    .locals 3

    .prologue
    .line 193
    iget-boolean v1, p0, Lcom/genie_connect/android/db/config/EmailMyEvent$8;->val$loggedIn:Z

    if-eqz v1, :cond_0

    .line 194
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "myinbox"

    const-string v2, "TRUE"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .local v0, "nvp":Lorg/apache/http/NameValuePair;
    :goto_0
    return-object v0

    .line 196
    .end local v0    # "nvp":Lorg/apache/http/NameValuePair;
    :cond_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "alerts"

    const-string v2, "TRUE"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "nvp":Lorg/apache/http/NameValuePair;
    goto :goto_0
.end method
