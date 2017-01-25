.class public Lcom/genie_connect/android/db/config/GenieMobileModule;
.super Ljava/lang/Object;
.source "GenieMobileModule.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/genie_connect/android/db/config/GenieMobileModule;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARCEL_KEY_ICON_NAME:Ljava/lang/String; = "icon_name"

.field private static final PARCEL_KEY_ICON_SET:Ljava/lang/String; = "icon_set"

.field private static final PARCEL_KEY_INTENT:Ljava/lang/String; = "intent"

.field private static final PARCEL_KEY_KEY:Ljava/lang/String; = "key"

.field private static final PARCEL_KEY_LABEL:Ljava/lang/String; = "label_string"

.field private static final PARCEL_KEY_NAMESPACE:Ljava/lang/String; = "namespace"

.field private static final PARCEL_KEY_WIDGET:Ljava/lang/String; = "widget_type"


# instance fields
.field private mBadgeCount:I

.field private final mBadgeCounter:Lcom/genie_connect/android/db/config/badgecount/BadgeCount;

.field private mEmailer:Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;

.field private final mGenieWidget:Lcom/genie_connect/android/db/config/GenieWidget;

.field private final mIconName:Ljava/lang/String;

.field private final mIconSet:Ljava/lang/String;

.field private final mIntent:Lcom/eventgenie/android/utils/intents/NavigationIntent;

.field private final mKey:Ljava/lang/String;

.field private final mLabelString:Ljava/lang/String;

.field private final mNamespace:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/genie_connect/android/db/config/GenieMobileModule$1;

    invoke-direct {v0}, Lcom/genie_connect/android/db/config/GenieMobileModule$1;-><init>()V

    sput-object v0, Lcom/genie_connect/android/db/config/GenieMobileModule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Lcom/eventgenie/android/utils/intents/NavigationIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/db/config/GenieWidget;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "namespace"    # J
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "intent"    # Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .param p6, "label"    # Ljava/lang/String;
    .param p7, "iconName"    # Ljava/lang/String;
    .param p8, "iconSet"    # Ljava/lang/String;
    .param p9, "widget"    # Lcom/genie_connect/android/db/config/GenieWidget;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p5, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mIntent:Lcom/eventgenie/android/utils/intents/NavigationIntent;

    .line 87
    iput-object p4, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mKey:Ljava/lang/String;

    .line 88
    iput-object p6, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mLabelString:Ljava/lang/String;

    .line 89
    iput-object p9, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mGenieWidget:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 90
    iput-wide p2, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mNamespace:J

    .line 91
    iput-object p7, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mIconName:Ljava/lang/String;

    .line 92
    iput-object p8, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mIconSet:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;

    invoke-direct {v0}, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;-><init>()V

    iget-object v1, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mGenieWidget:Lcom/genie_connect/android/db/config/GenieWidget;

    iget-wide v2, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mNamespace:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;->getBadgeForWidget(Lcom/genie_connect/android/db/config/GenieWidget;J)Lcom/genie_connect/android/db/config/badgecount/BadgeCount;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mBadgeCounter:Lcom/genie_connect/android/db/config/badgecount/BadgeCount;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    .line 100
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "widget_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/db/config/GenieWidget;

    iput-object v1, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mGenieWidget:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 101
    const-string v1, "icon_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mIconName:Ljava/lang/String;

    .line 102
    const-string v1, "icon_set"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mIconSet:Ljava/lang/String;

    .line 103
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    iput-object v1, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mIntent:Lcom/eventgenie/android/utils/intents/NavigationIntent;

    .line 104
    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mKey:Ljava/lang/String;

    .line 105
    const-string v1, "label_string"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mLabelString:Ljava/lang/String;

    .line 106
    const-string v1, "namespace"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mNamespace:J

    .line 107
    new-instance v1, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;

    invoke-direct {v1}, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;-><init>()V

    iget-object v2, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mGenieWidget:Lcom/genie_connect/android/db/config/GenieWidget;

    iget-wide v4, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mNamespace:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;->getBadgeForWidget(Lcom/genie_connect/android/db/config/GenieWidget;J)Lcom/genie_connect/android/db/config/badgecount/BadgeCount;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mBadgeCounter:Lcom/genie_connect/android/db/config/badgecount/BadgeCount;

    .line 108
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public getBadgeCount()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mBadgeCount:I

    return v0
.end method

.method public declared-synchronized getIcon(Landroid/content/Context;JLcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;)Lcom/genie_connect/android/db/config/WidgetIcon;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "namespace"    # J
    .param p4, "type"    # Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mIconName:Ljava/lang/String;

    iget-object v5, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mIconSet:Ljava/lang/String;

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/genie_connect/android/db/config/IconManager;->getIcon(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;)Lcom/genie_connect/android/db/config/WidgetIcon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIconName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mIconName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mLabelString:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigationIntent()Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mIntent:Lcom/eventgenie/android/utils/intents/NavigationIntent;

    return-object v0
.end method

.method public getWidget()Lcom/genie_connect/android/db/config/GenieWidget;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mGenieWidget:Lcom/genie_connect/android/db/config/GenieWidget;

    return-object v0
.end method

.method public hasValidIntent()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 144
    iget-object v1, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mIntent:Lcom/eventgenie/android/utils/intents/NavigationIntent;

    if-nez v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mIntent:Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public performBadgeCount(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mBadgeCounter:Lcom/genie_connect/android/db/config/badgecount/BadgeCount;

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/db/config/badgecount/BadgeCount;->perform(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mBadgeCount:I

    .line 152
    iget v0, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mBadgeCount:I

    return v0
.end method

.method public setBadgeCount(I)V
    .locals 0
    .param p1, "bc"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mBadgeCount:I

    .line 157
    return-void
.end method

.method public toEmail(ZLjava/util/List;)V
    .locals 4
    .param p1, "isLogged"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v0, Lcom/genie_connect/android/db/config/EmailMyEvent;

    invoke-direct {v0}, Lcom/genie_connect/android/db/config/EmailMyEvent;-><init>()V

    iget-object v1, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mGenieWidget:Lcom/genie_connect/android/db/config/GenieWidget;

    iget-wide v2, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mNamespace:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/genie_connect/android/db/config/EmailMyEvent;->getToEmailWidget(Lcom/genie_connect/android/db/config/GenieWidget;JZ)Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mEmailer:Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;

    .line 161
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mEmailer:Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;

    invoke-interface {v0}, Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;->perform()Lorg/apache/http/NameValuePair;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mGenieWidget:Lcom/genie_connect/android/db/config/GenieWidget;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_AGENDA:Lcom/genie_connect/android/db/config/GenieWidget;

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 165
    new-instance v0, Lcom/genie_connect/android/db/config/EmailMyEvent;

    invoke-direct {v0}, Lcom/genie_connect/android/db/config/EmailMyEvent;-><init>()V

    iget-wide v2, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mNamespace:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/genie_connect/android/db/config/EmailMyEvent;->getSubsessionToEmailWidget(JZ)Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mEmailer:Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;

    .line 166
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mEmailer:Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;

    invoke-interface {v0}, Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;->perform()Lorg/apache/http/NameValuePair;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GenieMobileModule [mBadgeCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mBadgeCounter:Lcom/genie_connect/android/db/config/badgecount/BadgeCount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGenieWidget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mGenieWidget:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mIntent:Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIconName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mIconName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIconSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mIconSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLabelString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mLabelString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNamespace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mNamespace:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEmailer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mEmailer:Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBadgeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mBadgeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 187
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Ljava/lang/ClassLoader;)V

    .line 189
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "namespace"

    iget-wide v2, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mNamespace:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 190
    const-string v1, "intent"

    iget-object v2, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mIntent:Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 191
    const-string/jumbo v1, "widget_type"

    iget-object v2, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mGenieWidget:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 192
    const-string v1, "icon_name"

    iget-object v2, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mIconName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "icon_set"

    iget-object v2, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mIconSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "key"

    iget-object v2, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "label_string"

    iget-object v2, p0, Lcom/genie_connect/android/db/config/GenieMobileModule;->mLabelString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 198
    return-void
.end method
