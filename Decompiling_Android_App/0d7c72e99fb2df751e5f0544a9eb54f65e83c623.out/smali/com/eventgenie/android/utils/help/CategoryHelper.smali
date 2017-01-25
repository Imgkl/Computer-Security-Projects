.class public Lcom/eventgenie/android/utils/help/CategoryHelper;
.super Ljava/lang/Object;
.source "CategoryHelper.java"

# interfaces
.implements Lcom/eventgenie/android/activities/others/categories/GenieCategories;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCategoryColumnName(I)Ljava/lang/String;
    .locals 1
    .param p0, "categoryType"    # I

    .prologue
    .line 37
    sparse-switch p0, :sswitch_data_0

    .line 42
    const-string v0, "name"

    :goto_0
    return-object v0

    .line 40
    :sswitch_0
    const-string v0, "address_country"

    goto :goto_0

    .line 37
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
