.class public interface abstract Lcom/urbanairship/push/iam/view/Banner;
.super Ljava/lang/Object;
.source "Banner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/iam/view/Banner$OnDismissClickListener;,
        Lcom/urbanairship/push/iam/view/Banner$OnActionClickListener;
    }
.end annotation


# virtual methods
.method public abstract setNotificationActionButtonGroup(Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;)V
.end method

.method public abstract setOnActionClickListener(Lcom/urbanairship/push/iam/view/Banner$OnActionClickListener;)V
.end method

.method public abstract setOnDismissClickListener(Lcom/urbanairship/push/iam/view/Banner$OnDismissClickListener;)V
.end method

.method public abstract setPrimaryColor(I)V
.end method

.method public abstract setSecondaryColor(I)V
.end method

.method public abstract setText(Ljava/lang/CharSequence;)V
.end method
