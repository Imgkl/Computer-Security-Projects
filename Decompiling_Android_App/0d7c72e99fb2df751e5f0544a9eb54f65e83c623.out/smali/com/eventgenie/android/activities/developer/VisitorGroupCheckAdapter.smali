.class public Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "VisitorGroupCheckAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter$1;,
        Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final COLOR_GRAY:Ljava/lang/String; = "#69696B"

.field private static final COLOR_GREEN:Ljava/lang/String; = "#669900"

.field private static final COLOR_RED:Ljava/lang/String; = "#cc0000"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mInflator:Landroid/view/LayoutInflater;

.field private final mVisitorRecord:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[I)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resource"    # I
    .param p3, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I

    .prologue
    .line 41
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;->mInflator:Landroid/view/LayoutInflater;

    .line 43
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;->mActivity:Landroid/app/Activity;

    .line 44
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;->mVisitorRecord:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    .line 45
    return-void
.end method

.method private static getColorString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<font color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getId(Luk/co/alt236/easycursor/EasyCursor;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 123
    const-string v2, "id"

    invoke-interface {p0, v2}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 125
    .local v0, "id":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 126
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 128
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "name"

    const-string v3, "<NO ID>"

    invoke-interface {p0, v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getName(Luk/co/alt236/easycursor/EasyCursor;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 133
    const-string v2, "name"

    invoke-interface {p0, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 139
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    const-string v2, "firstNames"

    invoke-interface {p0, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "firstName":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lastNames"

    const-string v4, ""

    invoke-interface {p0, v3, v4}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 145
    :cond_1
    const-string v1, "<NAME FIELD NOT FOUND>"

    goto :goto_0
.end method

.method private getVisitorGroupPermissionBreakdown(Luk/co/alt236/easycursor/EasyCursor;)Ljava/lang/String;
    .locals 11
    .param p1, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    const-wide/16 v8, -0x1

    const/16 v10, 0x20

    .line 79
    const-string v7, "permissionGroup"

    invoke-interface {p1, v7, v8, v9}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 80
    .local v4, "permissionGroupId":J
    cmp-long v7, v4, v8

    if-nez v7, :cond_0

    .line 81
    const-string v7, "No PermissionGroup on entity kind"

    const-string v8, "#69696B"

    invoke-static {v7, v8}, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;->getColorString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 114
    :goto_0
    return-object v7

    .line 84
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-nez v7, :cond_1

    .line 85
    const-string v7, "PermissionGroup not set"

    const-string v8, "#669900"

    invoke-static {v7, v8}, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;->getColorString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 88
    :cond_1
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getPermissionGroup(Ljava/lang/Long;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v2

    .line 89
    .local v2, "permissionGroup":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v7

    iget-object v8, p0, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;->mVisitorRecord:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    sget-object v9, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->VIEW:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-virtual {v7, v8, v9, v2}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v6

    .line 94
    .local v6, "view":Z
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v7

    iget-object v8, p0, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;->mVisitorRecord:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    sget-object v9, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->ADD_TO_FAVOURITE:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-virtual {v7, v8, v9, v2}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v0

    .line 99
    .local v0, "fav":Z
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v7

    iget-object v8, p0, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;->mVisitorRecord:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    sget-object v9, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->OPEN:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-virtual {v7, v8, v9, v2}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v1

    .line 104
    .local v1, "open":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v7, "FAV: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    if-eqz v0, :cond_2

    const-string v7, "#669900"

    :goto_1
    invoke-static {v8, v7}, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;->getColorString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    const-string v7, "VIEW: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    if-eqz v6, :cond_3

    const-string v7, "#669900"

    :goto_2
    invoke-static {v8, v7}, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;->getColorString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    const-string v7, "OPEN: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    if-eqz v1, :cond_4

    const-string v7, "#669900"

    :goto_3
    invoke-static {v8, v7}, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;->getColorString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 106
    :cond_2
    const-string v7, "#cc0000"

    goto :goto_1

    .line 109
    :cond_3
    const-string v7, "#cc0000"

    goto :goto_2

    .line 112
    :cond_4
    const-string v7, "#cc0000"

    goto :goto_3
.end method


# virtual methods
.method public bridge synthetic getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getCursor()Luk/co/alt236/easycursor/EasyCursor;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/support/v4/widget/SimpleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Luk/co/alt236/easycursor/EasyCursor;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    invoke-interface {v1, p1}, Luk/co/alt236/easycursor/EasyCursor;->moveToPosition(I)Z

    .line 57
    if-nez p2, :cond_0

    .line 58
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;->mInflator:Landroid/view/LayoutInflater;

    sget v2, Lcom/eventgenie/android/R$layout;->list_item_three_textview_lines:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    new-instance v0, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter$ViewHolder;

    invoke-direct {v0, v3}, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter$ViewHolder;-><init>(Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter$1;)V

    .line 60
    .local v0, "viewHolder":Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter$ViewHolder;
    sget v1, Lcom/eventgenie/android/R$id;->text1:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 61
    sget v1, Lcom/eventgenie/android/R$id;->text2:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 62
    sget v1, Lcom/eventgenie/android/R$id;->text3:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter$ViewHolder;->line3:Landroid/widget/TextView;

    .line 64
    iget-object v1, v0, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_0
    iget-object v1, v0, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;->getName(Luk/co/alt236/easycursor/EasyCursor;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, v0, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;->getId(Luk/co/alt236/easycursor/EasyCursor;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, v0, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter$ViewHolder;->line3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;->getVisitorGroupPermissionBreakdown(Luk/co/alt236/easycursor/EasyCursor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    sget v1, Lcom/eventgenie/android/R$string;->info:I

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 75
    return-object p2

    .line 67
    .end local v0    # "viewHolder":Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter$ViewHolder;

    .restart local v0    # "viewHolder":Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter$ViewHolder;
    goto :goto_0
.end method
