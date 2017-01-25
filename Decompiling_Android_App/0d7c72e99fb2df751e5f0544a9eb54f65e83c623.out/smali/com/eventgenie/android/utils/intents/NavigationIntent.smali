.class public Lcom/eventgenie/android/utils/intents/NavigationIntent;
.super Ljava/lang/Object;
.source "NavigationIntent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/eventgenie/android/utils/intents/NavigationIntent;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARCEL_KEY_INTENT:Ljava/lang/String; = "intent"

.field private static final PARCEL_KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final PARCEL_KEY_NOTIFICATIONSTYLE:Ljava/lang/String; = "notificationstyle"


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private final mMessage:Ljava/lang/String;

.field private mNotificationStyle:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/eventgenie/android/utils/intents/NavigationIntent$1;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/intents/NavigationIntent$1;-><init>()V

    sput-object v0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mIntent:Landroid/content/Intent;

    .line 31
    iput-object v0, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mMessage:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->NONE:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    iput-object v0, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mNotificationStyle:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mIntent:Landroid/content/Intent;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mMessage:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->NONE:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    iput-object v0, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mNotificationStyle:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    .line 48
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mIntent:Landroid/content/Intent;

    .line 49
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mMessage:Ljava/lang/String;

    .line 50
    const-string v1, "notificationstyle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    iput-object v1, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mNotificationStyle:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mIntent:Landroid/content/Intent;

    .line 55
    iput-object p1, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mMessage:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mNotificationStyle:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public forceToast()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mNotificationStyle:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    sget-object v1, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->POPUP_OK:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    if-ne v0, v1, :cond_0

    .line 67
    sget-object v0, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->TOAST_INFO:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    iput-object v0, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mNotificationStyle:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    .line 69
    :cond_0
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationStyle()Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mNotificationStyle:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    return-object v0
.end method

.method public putExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 97
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavigationIntent [mIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNotificationStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mNotificationStyle:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Ljava/lang/ClassLoader;)V

    .line 103
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "intent"

    iget-object v2, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 104
    const-string v1, "message"

    iget-object v2, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "notificationstyle"

    iget-object v2, p0, Lcom/eventgenie/android/utils/intents/NavigationIntent;->mNotificationStyle:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 108
    return-void
.end method
