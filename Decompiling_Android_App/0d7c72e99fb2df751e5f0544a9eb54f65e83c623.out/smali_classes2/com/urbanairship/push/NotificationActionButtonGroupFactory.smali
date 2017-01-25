.class Lcom/urbanairship/push/NotificationActionButtonGroupFactory;
.super Ljava/lang/Object;
.source "NotificationActionButtonGroupFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createUrbanAirshipGroups()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v0, "groups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;>;"
    const-string v1, "ua_yes_no_foreground"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "yes"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_yes:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_accept:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "no"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_no:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_decline:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "ua_yes_no_background"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "yes"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_yes:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_accept:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "no"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_no:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_decline:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "ua_accept_decline_foreground"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "accept"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_accept:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_accept:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "decline"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_decline:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_decline:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "ua_accept_decline_background"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "accept"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_accept:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_accept:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "decline"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_decline:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_decline:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "ua_download_share"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "download"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_download:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_download:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "share"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_share:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_share:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "ua_remind_share"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "remind"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_remind:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_remind:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "share"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_share:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_share:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "ua_opt_in_share"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "opt_in"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_opt_in:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_follow:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "share"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_share:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_share:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v1, "ua_opt_out_share"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "opt_out"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_opt_out:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_unfollow:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "share"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_share:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_share:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v1, "ua_follow_share"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "follow"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_follow:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_follow:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "share"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_share:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_share:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v1, "ua_unfollow_share"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "unfollow"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_unfollow:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_unfollow:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "share"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_share:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_share:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "ua_shop_now_share"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "shop_now"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_shop_now:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_cart:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "share"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_share:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_share:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v1, "ua_buy_now_share"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "buy_now"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_buy_now:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_cart:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "share"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_share:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_share:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "ua_more_like_less_like"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "more_like"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_more_like:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_thumbs_up:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "less_like"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_less_like:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_thumbs_down:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "ua_like_dislike"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "like"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_like:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_thumbs_up:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "dislike"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_dislike:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_thumbs_down:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v1, "ua_like_share"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "like"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_like:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_thumbs_up:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "share"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_share:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_share:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v1, "ua_shop_now"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "shop_now"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_shop_now:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_cart:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v1, "ua_buy_now"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "buy_now"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_buy_now:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_cart:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v1, "ua_follow"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "follow"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_follow:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_follow:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v1, "ua_unfollow"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "unfollow"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_unfollow:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_unfollow:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v1, "ua_opt_in"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "opt_in"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_opt_in:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_follow:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v1, "ua_opt_out"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "opt_out"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_opt_out:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_unfollow:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v1, "ua_remind_me_later"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "remind"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_remind:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_remind:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v1, "ua_share"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "share"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_share:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_share:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v1, "ua_download"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "download"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_download:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_download:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v1, "ua_like"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "like"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$string;->ua_notification_button_like:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_thumbs_up:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v1, "ua_icons_up_down"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "up"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_thumbs_up:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    const-string v4, "thumbs up icon"

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setDescription(Ljava/lang/String;)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "down"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_thumbs_down:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    const-string v4, "thumbs down icon"

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setDescription(Ljava/lang/String;)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v1, "ua_icons_happy_sad"

    new-instance v2, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    invoke-direct {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;-><init>()V

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "happy"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_happy:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    const-string v4, "happy icon"

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setDescription(Ljava/lang/String;)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    new-instance v3, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    const-string v4, "sad"

    invoke-direct {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_sad:I

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    const-string v4, "sad icon"

    invoke-virtual {v3, v4}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setDescription(Ljava/lang/String;)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    return-object v0
.end method
