.class Lcom/genie_connect/android/db/config/EmailMyEvent$12;
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

.field final synthetic val$widget:Lcom/genie_connect/android/db/config/GenieWidget;


# direct methods
.method constructor <init>(Lcom/genie_connect/android/db/config/EmailMyEvent;Lcom/genie_connect/android/db/config/GenieWidget;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/genie_connect/android/db/config/EmailMyEvent$12;->this$0:Lcom/genie_connect/android/db/config/EmailMyEvent;

    iput-object p2, p0, Lcom/genie_connect/android/db/config/EmailMyEvent$12;->val$widget:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform()Lorg/apache/http/NameValuePair;
    .locals 3

    .prologue
    .line 251
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "UNKNOWN_WIDGET"

    iget-object v2, p0, Lcom/genie_connect/android/db/config/EmailMyEvent$12;->val$widget:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/GenieWidget;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
