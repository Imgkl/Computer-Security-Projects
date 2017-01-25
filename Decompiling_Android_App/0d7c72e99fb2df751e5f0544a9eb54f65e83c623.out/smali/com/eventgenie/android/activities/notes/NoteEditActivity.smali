.class public Lcom/eventgenie/android/activities/notes/NoteEditActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "NoteEditActivity.java"


# static fields
.field public static final ACTION_EDIT_NOTE:I = 0x2711

.field public static final LOADER_ID:I = 0x1

.field public static final NOTE_ASSOC_ENTITY_HAS_NOTE:Ljava/lang/String; = "NOTE_ASSOC_ENTITY_HAS_NOTE"

.field public static final NOTE_ASSOC_ENTITY_ID:Ljava/lang/String; = "NOTE_ASSOC_ENTITY_ID"

.field public static final NOTE_ASSOC_ENTITY_IMAGEURL:Ljava/lang/String; = "NOTE_ASSOC_ENTITY_IMAGEURL"

.field public static final NOTE_ASSOC_ENTITY_IS_FAV:Ljava/lang/String; = "NOTE_ASSOC_ENTITY_IS_FAV"

.field public static final NOTE_ASSOC_ENTITY_NAME:Ljava/lang/String; = "NOTE_ASSOC_ENTITY_NAME"

.field public static final NOTE_ASSOC_ENTITY_TYPE:Ljava/lang/String; = "NOTE_ASSOC_ENTITY_TYPE"

.field public static final NOTE_CONTENT_EXTRA:Ljava/lang/String; = "note_content"

.field public static final RESULT_NOTE_DISCARDED:I = 0xc

.field public static final RESULT_NOTE_SAVED:I = 0xb

.field public static final RESULT_NOTE_UNCHANGED:I = 0xd


# instance fields
.field private mAssocEntityHasNote:Z

.field private mAssocEntityId:Ljava/lang/Long;

.field private mAssocEntityImageUrl:Ljava/lang/String;

.field private mAssocEntityIsBookmarked:Z

.field private mAssocEntityIsFav:Z

.field private mAssocEntityName:Ljava/lang/String;

.field private mAssocEntityType:Ljava/lang/String;

.field private mEntityId:J

.field private mIsNoteSavedAlready:Z

.field private mNoteEdit:Landroid/widget/EditText;

.field private mOriginalText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 92
    iput-object v1, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mOriginalText:Ljava/lang/String;

    .line 93
    iput-wide v2, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mEntityId:J

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityId:Ljava/lang/Long;

    .line 95
    iput-object v1, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityType:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityName:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityImageUrl:Ljava/lang/String;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mIsNoteSavedAlready:Z

    return-void
.end method

.method static synthetic access$002(Lcom/eventgenie/android/activities/notes/NoteEditActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/notes/NoteEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mIsNoteSavedAlready:Z

    return p1
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/notes/NoteEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/notes/NoteEditActivity;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->discardNote()V

    return-void
.end method

.method private commitNote(Lcom/genie_connect/android/db/access/Udm$NoteAction;)V
    .locals 11
    .param p1, "action"    # Lcom/genie_connect/android/db/access/Udm$NoteAction;

    .prologue
    .line 105
    sget-object v0, Lcom/genie_connect/android/db/access/Udm$NoteAction;->ADD:Lcom/genie_connect/android/db/access/Udm$NoteAction;

    if-ne p1, v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mEntityId:J

    iget-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityType:Ljava/lang/String;

    iget-object v1, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v1, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mNoteEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v8

    move-object v1, p0

    move-object v10, p1

    invoke-virtual/range {v0 .. v10}, Lcom/genie_connect/android/db/access/Udm;->note(Landroid/content/Context;JLjava/lang/String;JLjava/lang/String;JLcom/genie_connect/android/db/access/Udm$NoteAction;)Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    .line 124
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mEntityId:J

    iget-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityType:Ljava/lang/String;

    iget-object v1, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v8

    move-object v1, p0

    move-object v10, p1

    invoke-virtual/range {v0 .. v10}, Lcom/genie_connect/android/db/access/Udm;->note(Landroid/content/Context;JLjava/lang/String;JLjava/lang/String;JLcom/genie_connect/android/db/access/Udm$NoteAction;)Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    goto :goto_0
.end method

.method private discardNote()V
    .locals 2

    .prologue
    .line 298
    sget v0, Lcom/eventgenie/android/R$string;->note_discarded:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 303
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 304
    sget-object v0, Lcom/genie_connect/android/db/access/Udm$NoteAction;->REMOVE:Lcom/genie_connect/android/db/access/Udm$NoteAction;

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->commitNote(Lcom/genie_connect/android/db/access/Udm$NoteAction;)V

    .line 305
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->finish()V

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mIsNoteSavedAlready:Z

    .line 308
    return-void
.end method

.method private populateEntityDetails(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "b"    # Landroid/os/Bundle;

    .prologue
    .line 343
    sget v4, Lcom/eventgenie/android/R$id;->name:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 344
    .local v2, "name":Landroid/widget/TextView;
    sget v4, Lcom/eventgenie/android/R$id;->favourite_star:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 345
    .local v1, "favStar":Landroid/widget/ImageView;
    sget v4, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 347
    .local v3, "photo":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    const-string v4, "sessions"

    iget-object v5, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "subsessions"

    iget-object v5, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 352
    :cond_0
    iget-boolean v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityIsFav:Z

    iget-boolean v5, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityHasNote:Z

    iget-boolean v6, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityIsBookmarked:Z

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v1, v7}, Lcom/eventgenie/android/ui/help/UIUtils;->setAgendaAndNoteIcon(ZZZLandroid/widget/ImageView;Z)V

    .line 368
    :goto_0
    iget-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityImageUrl:Ljava/lang/String;

    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->shouldRestrictEntityImage()Z

    move-result v4

    if-nez v4, :cond_1

    .line 369
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityImageUrl:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 373
    :cond_1
    return-void

    .line 355
    :cond_2
    const-string/jumbo v4, "visitors"

    iget-object v5, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 356
    sget v0, Lcom/eventgenie/android/R$drawable;->ic_action_blue_person:I

    .line 361
    .local v0, "defaultIcon":I
    :goto_1
    iget-boolean v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityIsFav:Z

    iget-boolean v5, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityHasNote:Z

    invoke-static {v1, v4, v5, v0}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->setFavourite(Landroid/view/View;ZZI)V

    goto :goto_0

    .line 358
    .end local v0    # "defaultIcon":I
    :cond_3
    sget v0, Lcom/eventgenie/android/R$drawable;->ic_action_blue_important:I

    .restart local v0    # "defaultIcon":I
    goto :goto_1
.end method

.method private saveNote(Z)V
    .locals 4
    .param p1, "autoFinishActivity"    # Z

    .prologue
    .line 266
    iget-object v2, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mNoteEdit:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 267
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 270
    .local v1, "resultData":Landroid/content/Intent;
    iget-object v2, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mNoteEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mOriginalText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    const/16 v0, 0xd

    .line 277
    .local v0, "resultCode":I
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 278
    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->finish()V

    .line 282
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mIsNoteSavedAlready:Z

    .line 292
    .end local v0    # "resultCode":I
    .end local v1    # "resultData":Landroid/content/Intent;
    :goto_1
    return-void

    .line 273
    .restart local v1    # "resultData":Landroid/content/Intent;
    :cond_1
    const/16 v0, 0xb

    .line 274
    .restart local v0    # "resultCode":I
    sget-object v2, Lcom/genie_connect/android/db/access/Udm$NoteAction;->ADD:Lcom/genie_connect/android/db/access/Udm$NoteAction;

    invoke-direct {p0, v2}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->commitNote(Lcom/genie_connect/android/db/access/Udm$NoteAction;)V

    goto :goto_0

    .line 284
    .end local v0    # "resultCode":I
    .end local v1    # "resultData":Landroid/content/Intent;
    :cond_2
    iget-boolean v2, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mIsNoteSavedAlready:Z

    if-eqz v2, :cond_3

    .line 285
    sget v2, Lcom/eventgenie/android/R$string;->note_empty:I

    invoke-static {p0, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;I)V

    goto :goto_1

    .line 289
    :cond_3
    invoke-direct {p0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->discardNote()V

    goto :goto_1
.end method

.method private shouldRestrictEntityImage()Z
    .locals 5

    .prologue
    .line 376
    iget-object v3, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityType:Ljava/lang/String;

    const-string/jumbo v4, "visitors"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    const-class v3, Lcom/genie_connect/android/repository/VisitorRepository;

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/android/repository/VisitorRepository;

    iget-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityId:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Lcom/genie_connect/android/repository/VisitorRepository;->getVisitorGroupForVisitor(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "visitorGroup":Ljava/lang/String;
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 381
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v0

    .line 383
    .local v0, "currentVisitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getVisitorGroup()Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 384
    const-class v3, Lcom/genie_connect/android/repository/VisitorGroupRepository;

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/android/repository/VisitorGroupRepository;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getVisitorGroup()Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/genie_connect/android/repository/VisitorGroupRepository;->getViewingRestrictions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 387
    .local v1, "restrictions":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;>;"
    sget-object v3, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->MugShot:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 388
    const/4 v3, 0x1

    .line 395
    .end local v0    # "currentVisitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .end local v1    # "restrictions":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;>;"
    .end local v2    # "visitorGroup":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onBackPressed()V

    .line 241
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mIsNoteSavedAlready:Z

    if-nez v0, :cond_0

    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->saveNote(Z)V

    .line 244
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const-wide/16 v6, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 128
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 130
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v3

    .line 133
    .local v3, "restoredData":Ljava/lang/Object;
    if-eqz v0, :cond_5

    .line 134
    const-string v4, "entity_id"

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mEntityId:J

    .line 137
    iget-wide v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mEntityId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getNotes()Lcom/genie_connect/android/db/access/DbNotes;

    move-result-object v4

    iget-wide v6, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mEntityId:J

    invoke-virtual {v4, v6, v7, v10, v10}, Lcom/genie_connect/android/db/access/DbNotes;->getNotes(J[Ljava/lang/String;Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 140
    .local v1, "cursor":Luk/co/alt236/easycursor/EasyCursor;
    invoke-static {v1}, Lcom/genie_connect/android/db/DbHelper;->has(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    .line 143
    const-string v4, "note"

    invoke-interface {v1, v4}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mOriginalText:Ljava/lang/String;

    .line 146
    const-string v4, "name"

    invoke-interface {v1, v4}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityName:Ljava/lang/String;

    .line 147
    const-string v4, "entity"

    invoke-interface {v1, v4}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityType:Ljava/lang/String;

    .line 148
    const-string v4, "entityId"

    invoke-interface {v1, v4}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityId:Ljava/lang/Long;

    .line 151
    const-string v4, "image"

    invoke-interface {v1, v4}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityImageUrl:Ljava/lang/String;

    .line 152
    const-string v4, "hasNote"

    invoke-interface {v1, v4}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityHasNote:Z

    .line 153
    const-string v4, "isFavourite"

    invoke-interface {v1, v4}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityIsFav:Z

    .line 154
    const-string v4, "isBookmarked"

    invoke-interface {v1, v4}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityIsBookmarked:Z

    .line 170
    .end local v1    # "cursor":Luk/co/alt236/easycursor/EasyCursor;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/FeatureConfig;->getMyEventFeatures()Lcom/genie_connect/android/db/config/features/MyEventFeatures;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->getAllowedActions()Lcom/genie_connect/android/db/config/features/ActionsAllowed;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityType:Ljava/lang/String;

    invoke-static {v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->NOTES:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    invoke-virtual {v4, v5, v6}, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->isActionAllowed(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;)Z

    move-result v2

    .line 174
    .local v2, "isActionAllowed":Z
    if-eqz v2, :cond_3

    .line 175
    sget v4, Lcom/eventgenie/android/R$layout;->activity_note_edit:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->setContentView(I)V

    .line 179
    :goto_1
    sget v4, Lcom/eventgenie/android/R$id;->edit_body:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mNoteEdit:Landroid/widget/EditText;

    .line 181
    iput-boolean v9, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mIsNoteSavedAlready:Z

    .line 183
    iget-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mNoteEdit:Landroid/widget/EditText;

    new-instance v5, Lcom/eventgenie/android/activities/notes/NoteEditActivity$1;

    invoke-direct {v5, p0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity$1;-><init>(Lcom/eventgenie/android/activities/notes/NoteEditActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 196
    iget-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mOriginalText:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 197
    const-string v4, ""

    iput-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mOriginalText:Ljava/lang/String;

    .line 200
    :cond_1
    sget v4, Lcom/eventgenie/android/R$id;->entityDetailsBlock:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->populateEntityDetails(Landroid/view/View;Landroid/os/Bundle;)V

    .line 203
    iget-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mNoteEdit:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    if-eqz v3, :cond_4

    .line 205
    iget-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mNoteEdit:Landroid/widget/EditText;

    check-cast v3, Ljava/lang/CharSequence;

    .end local v3    # "restoredData":Ljava/lang/Object;
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 213
    :goto_2
    sget v4, Lcom/eventgenie/android/R$id;->section_divider:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v5

    invoke-interface {v5}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->getDetailsTitleColour()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 216
    if-eqz v2, :cond_6

    .line 217
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->DISCARD:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v4, v5, v9}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 220
    iget-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mNoteEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 221
    iget-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mNoteEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 228
    :goto_3
    return-void

    .line 157
    .end local v2    # "isActionAllowed":Z
    .restart local v3    # "restoredData":Ljava/lang/Object;
    :cond_2
    const-string v4, "note_content"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mOriginalText:Ljava/lang/String;

    .line 158
    const-string v4, "NOTE_ASSOC_ENTITY_NAME"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityName:Ljava/lang/String;

    .line 159
    const-string v4, "NOTE_ASSOC_ENTITY_TYPE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityType:Ljava/lang/String;

    .line 160
    const-string v4, "NOTE_ASSOC_ENTITY_ID"

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityId:Ljava/lang/Long;

    .line 163
    const-string v4, "NOTE_ASSOC_ENTITY_IMAGEURL"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityImageUrl:Ljava/lang/String;

    .line 164
    const-string v4, "NOTE_ASSOC_ENTITY_IS_FAV"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityIsFav:Z

    .line 165
    const-string v4, "NOTE_ASSOC_ENTITY_HAS_NOTE"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityHasNote:Z

    .line 166
    const-string v4, "isBookmarked"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mAssocEntityIsBookmarked:Z

    goto/16 :goto_0

    .line 177
    .restart local v2    # "isActionAllowed":Z
    :cond_3
    sget v4, Lcom/eventgenie/android/R$layout;->activity_note_readonly:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->setContentView(I)V

    goto/16 :goto_1

    .line 207
    :cond_4
    iget-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mNoteEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mOriginalText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 210
    .end local v2    # "isActionAllowed":Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "isActionAllowed":Z
    goto/16 :goto_2

    .line 224
    .end local v3    # "restoredData":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 225
    iget-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mNoteEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 226
    iget-object v4, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mNoteEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    goto :goto_3
.end method

.method public onCustomButton1Click(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 257
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->saveNote(Z)V

    .line 258
    return-void
.end method

.method public onCustomButton2Click(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mNoteEdit:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_launcher:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->message_discard_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->note_delete_msg:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->alert_dialog_no:I

    new-instance v2, Lcom/eventgenie/android/activities/notes/NoteEditActivity$3;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity$3;-><init>(Lcom/eventgenie/android/activities/notes/NoteEditActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->alert_dialog_yes:I

    new-instance v2, Lcom/eventgenie/android/activities/notes/NoteEditActivity$2;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity$2;-><init>(Lcom/eventgenie/android/activities/notes/NoteEditActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->discardNote()V

    goto :goto_0
.end method

.method public onDiscardClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 232
    const-string v0, "^ NOTE: Discard button on actionbar clicked."

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->discardNote()V

    .line 235
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mIsNoteSavedAlready:Z

    if-nez v0, :cond_0

    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->saveNote(Z)V

    .line 253
    :cond_0
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onPause()V

    .line 254
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mNoteEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
