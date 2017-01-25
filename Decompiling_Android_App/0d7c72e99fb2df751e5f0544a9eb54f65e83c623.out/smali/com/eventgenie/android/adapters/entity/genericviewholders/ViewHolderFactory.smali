.class public Lcom/eventgenie/android/adapters/entity/genericviewholders/ViewHolderFactory;
.super Ljava/lang/Object;
.source "ViewHolderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/adapters/entity/genericviewholders/ViewHolderFactory$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/view/View;)Lcom/eventgenie/android/adapters/entity/genericviewholders/AbstractViewHolder;
    .locals 2
    .param p0, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 9
    sget-object v0, Lcom/eventgenie/android/adapters/entity/genericviewholders/ViewHolderFactory$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 16
    new-instance v0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;

    invoke-direct {v0, p1}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;-><init>(Landroid/view/View;)V

    :goto_0
    return-object v0

    .line 12
    :pswitch_0
    new-instance v0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;

    invoke-direct {v0, p1}, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 14
    :pswitch_1
    new-instance v0, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;

    invoke-direct {v0, p1}, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 9
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
