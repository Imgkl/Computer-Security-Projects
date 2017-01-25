.class public Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;
.super Ljava/lang/Object;
.source "IconFriendlyPopupMenu.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnMenuItemClickListener;,
        Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnDismissListener;
    }
.end annotation


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDismissListener:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnDismissListener;

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mMenuItemClickListener:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnMenuItemClickListener;

.field private mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "showIcons"    # Z

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 59
    iget-object v0, p0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 60
    iput-object p2, p0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->mAnchor:Landroid/view/View;

    .line 61
    new-instance v0, Landroid/support/v7/view/menu/MenuPopupHelper;

    iget-object v1, p0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v0, p1, v1, p2}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;)V

    iput-object v0, p0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;

    .line 62
    iget-object v0, p0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuPopupHelper;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 63
    iget-object v0, p0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-virtual {v0, p3}, Landroid/support/v7/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 64
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuPopupHelper;->dismiss()V

    .line 68
    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    iget-object v1, p0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public inflate(I)V
    .locals 2
    .param p1, "menuRes"    # I

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 80
    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->mDismissListener:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnDismissListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->mDismissListener:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnDismissListener;

    invoke-interface {v0, p0}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnDismissListener;->onDismiss(Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V

    .line 86
    :cond_0
    return-void
.end method

.method public onCloseSubMenu(Landroid/support/v7/view/menu/SubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Landroid/support/v7/view/menu/SubMenuBuilder;

    .prologue
    .line 88
    return-void
.end method

.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->mMenuItemClickListener:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->mMenuItemClickListener:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnMenuItemClickListener;

    invoke-interface {v0, p2}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 99
    return-void
.end method

.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .locals 4
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    const/4 v0, 0x1

    .line 103
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    new-instance v1, Landroid/support/v7/view/menu/MenuPopupHelper;

    iget-object v2, p0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v1, v2, p1, v3}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuPopupHelper;->show()V

    goto :goto_0
.end method

.method public setOnDismissListener(Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnDismissListener;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->mDismissListener:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnDismissListener;

    .line 115
    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnMenuItemClickListener;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->mMenuItemClickListener:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnMenuItemClickListener;

    .line 119
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuPopupHelper;->show()V

    .line 123
    return-void
.end method
