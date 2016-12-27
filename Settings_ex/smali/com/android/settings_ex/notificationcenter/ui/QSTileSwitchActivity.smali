.class public Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "QSTileSwitchActivity.java"


# instance fields
.field private final KEY_QSTILE_STRINGS:Ljava/lang/String;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mDataSourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDragGridView:Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;

.field private final mHandler:Landroid/os/Handler;

.field private final mQsTilesIsShowChangeObserver:Landroid/database/ContentObserver;

.field private mQstilesImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQstilesString:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSimSubState:[Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mDataSourceList:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesString:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    .line 27
    const-string v0, "qstile_strings"

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->KEY_QSTILE_STRINGS:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mDragGridView:Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mHandler:Landroid/os/Handler;

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mSimSubState:[Z

    .line 81
    new-instance v0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity$2;

    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity$2;-><init>(Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQsTilesIsShowChangeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mDataSourceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesString:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->initDataSource()V

    return-void
.end method

.method private changeQSTilesToEng(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "qstilesStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "tempQstilesString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 193
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 192
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :pswitch_0
    const-string v1, "wifi"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 198
    :pswitch_1
    const-string v1, "bt"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 201
    :pswitch_2
    const-string v1, "location"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 204
    :pswitch_3
    const-string v1, "hotspot"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 207
    :pswitch_4
    const-string v1, "airplane"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 210
    :pswitch_5
    const-string v1, "vibrate"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    :pswitch_6
    const-string v1, "undisturbed"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 216
    :pswitch_7
    const-string v1, "rotation"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 219
    :pswitch_8
    const-string v1, "ringersilent"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 222
    :pswitch_9
    const-string v1, "flashlight"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 225
    :pswitch_a
    const-string v1, "fastscreenshot"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 228
    :pswitch_b
    const-string v1, "clear"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 231
    :pswitch_c
    const-string v1, "karaoke"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 235
    :pswitch_d
    const-string v1, "data1"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 238
    :pswitch_e
    const-string v1, "data2"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 241
    :pswitch_f
    const-string v1, "splitscreen"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 244
    :pswitch_10
    const-string v1, "cast"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 247
    :pswitch_11
    const-string v1, "supersnap"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 252
    :cond_0
    return-void

    .line 193
    :pswitch_data_0
    .packed-switch 0x7f0c0c7a
        :pswitch_0
        :pswitch_1
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_2
        :pswitch_3
        :pswitch_11
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_10
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method

.method private changeQsTileToId()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const v8, 0x7f0c0c81

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 290
    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->getSimSubState()V

    .line 291
    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->dealQSTilesStringFromSettings()Ljava/util/ArrayList;

    move-result-object v2

    .line 292
    .local v2, "qstilesString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v1, "qstilesId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 294
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v3, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 293
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :sswitch_0
    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v4

    goto :goto_1

    :sswitch_1
    const-string v7, "bt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v5

    goto :goto_1

    :sswitch_2
    const-string v7, "data1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v7, "data2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v7, "location"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_5
    const-string v7, "hotspot"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_6
    const-string v7, "airplane"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_7
    const-string v7, "vibrate"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_8
    const-string v7, "undisturbed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_9
    const-string v7, "rotation"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x9

    goto :goto_1

    :sswitch_a
    const-string v7, "ringersilent"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0xa

    goto :goto_1

    :sswitch_b
    const-string v7, "flashlight"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v7, "screenshot"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v7, "clear"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v7, "cast"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string v7, "splitscreen"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string v7, "karaoke"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string v7, "supersnap"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string v7, "fastscreenshot"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x12

    goto/16 :goto_1

    .line 296
    :pswitch_0
    const v3, 0x7f0c0c7a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 299
    :pswitch_1
    const v3, 0x7f0c0c7b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 302
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mSimSubState:[Z

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mSimSubState:[Z

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_1

    .line 303
    const v3, 0x7f0c0c7d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 305
    :cond_1
    const v3, 0x7f0c0c7c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 309
    :pswitch_3
    const v3, 0x7f0c0c7e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 312
    :pswitch_4
    const v3, 0x7f0c0c7f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 315
    :pswitch_5
    const v3, 0x7f0c0c80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 318
    :pswitch_6
    const v3, 0x7f0c0c82

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 321
    :pswitch_7
    const v3, 0x7f0c0c83

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 324
    :pswitch_8
    const v3, 0x7f0c0c84

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 327
    :pswitch_9
    const v3, 0x7f0c0c85

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 330
    :pswitch_a
    const v3, 0x7f0c0c86

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 333
    :pswitch_b
    const v3, 0x7f0c0c87

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 336
    :pswitch_c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 339
    :pswitch_d
    const v3, 0x7f0c0c89

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 342
    :pswitch_e
    const v3, 0x7f0c0c8a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 345
    :pswitch_f
    const v3, 0x7f0c0c8b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 348
    :pswitch_10
    const v3, 0x7f0c0c8c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 351
    :pswitch_11
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 354
    :pswitch_12
    const v3, 0x7f0c0c88

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 359
    :cond_2
    return-object v1

    .line 294
    :sswitch_data_0
    .sparse-switch
        -0x52af5ffa -> :sswitch_f
        -0x468444da -> :sswitch_b
        -0x37caea1c -> :sswitch_10
        -0x285a60ae -> :sswitch_6
        -0x18d27a9a -> :sswitch_c
        -0x13c8d63b -> :sswitch_11
        -0x266f082 -> :sswitch_9
        0xc52 -> :sswitch_1
        0x2e7b3f -> :sswitch_e
        0x37af15 -> :sswitch_0
        0x5a5b64d -> :sswitch_d
        0x5af05c7 -> :sswitch_2
        0x5af05c8 -> :sswitch_3
        0x1a2fe465 -> :sswitch_8
        0x1ae6756f -> :sswitch_7
        0x319f9ac2 -> :sswitch_12
        0x418a9ecf -> :sswitch_5
        0x714f9fb5 -> :sswitch_4
        0x7294e572 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private dealQSTilesStringFromSettings()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->getQSTilesStringFromSettings()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "tempString":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v3, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v4, :cond_1

    .line 276
    :cond_0
    return-object v3

    .line 270
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "tempString":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 272
    .restart local v4    # "tempString":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 273
    .local v5, "tile":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 274
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getQSTilesStringFromSettings()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "qstile_strings"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSimSubState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_1

    .line 280
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 281
    .local v2, "subIdtemp":[I
    if-eqz v2, :cond_0

    .line 282
    aget v1, v2, v5

    .line 283
    .local v1, "subId":I
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mSimSubState:[Z

    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getSubStateDB(I)Z

    move-result v4

    aput-boolean v4, v3, v0

    .line 285
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mSimSubState:[Z

    aput-boolean v5, v3, v0

    .line 279
    .end local v1    # "subId":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    .end local v2    # "subIdtemp":[I
    :cond_1
    return-void
.end method

.method private initDataSource()V
    .locals 5

    .prologue
    .line 56
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesString:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mDataSourceList:Ljava/util/List;

    if-nez v3, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 58
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesString:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 59
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mDataSourceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 60
    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->changeQsTileToId()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesString:Ljava/util/List;

    .line 61
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesString:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->initQSTilesImages(Ljava/util/List;)V

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesString:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v1, "itemHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "item_image"

    iget-object v4, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v3, "item_text"

    iget-object v4, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesString:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mDataSourceList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    .end local v1    # "itemHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    new-instance v2, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mDataSourceList:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 70
    .local v2, "mSimpleAdapter":Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mDragGridView:Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;

    invoke-virtual {v3, v2}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mDragGridView:Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;

    new-instance v4, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity$1;

    invoke-direct {v4, p0, v2}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity$1;-><init>(Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;)V

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;->setOnChangeListener(Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView$OnChanageListener;)V

    goto :goto_0
.end method

.method private initQSTilesImages(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "qstilesStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const v3, 0x7f02010a

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 115
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 114
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    const v2, 0x7f02010d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    const v2, 0x7f0200fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 124
    :pswitch_2
    const v1, 0x7f0c0c7e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    const v2, 0x7f020100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    const v2, 0x7f0200ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    const v2, 0x7f020101

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    const v2, 0x7f020106

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    const v2, 0x7f020105

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 140
    :pswitch_6
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    const v2, 0x7f0200fd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 143
    :pswitch_7
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    const v2, 0x7f02010c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 146
    :pswitch_8
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    const v2, 0x7f02010e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 149
    :pswitch_9
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    const v2, 0x7f020108

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 152
    :pswitch_a
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    const v2, 0x7f020107

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 155
    :pswitch_b
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    const v2, 0x7f020104

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 158
    :pswitch_c
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    const v2, 0x7f020109

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 161
    :pswitch_d
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    const v2, 0x7f020075

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 164
    :pswitch_e
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 167
    :pswitch_f
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 170
    :pswitch_10
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 173
    :pswitch_11
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesImages:Ljava/util/List;

    const v2, 0x7f02010b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 178
    :cond_1
    return-void

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0c7a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_11
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method

.method private resetQsTilesIsShowChangeObserver()V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQsTilesIsShowChangeObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "qstile_strings"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQsTilesIsShowChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 94
    return-void
.end method

.method private saveQSTileStrings(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "qstilesString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "qstile_strings"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 258
    return-void
.end method

.method private saveQSTilesToSettins()V
    .locals 2

    .prologue
    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v0, "tempQstilesString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesString:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesString:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->changeQSTilesToEng(Ljava/util/List;Ljava/util/List;)V

    .line 184
    invoke-direct {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->saveQSTileStrings(Ljava/util/List;)V

    .line 185
    const/4 v0, 0x0

    .line 186
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesString:Ljava/util/List;

    .line 188
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onBackPressed()V

    .line 99
    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->saveQSTilesToSettins()V

    .line 100
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 35
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow;

    const v1, 0x7f0e0065

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mConfiguration:Landroid/content/res/Configuration;

    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mConfiguration:Landroid/content/res/Configuration;

    if-ne v0, v2, :cond_0

    .line 40
    const v0, 0x7f040157

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->setContentView(I)V

    .line 44
    :goto_0
    const v0, 0x7f12031b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mDragGridView:Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView;

    .line 45
    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->initDataSource()V

    .line 46
    invoke-direct {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->resetQsTilesIsShowChangeObserver()V

    .line 47
    return-void

    .line 42
    :cond_0
    const v0, 0x7f040158

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onDestroy()V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQsTilesIsShowChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 53
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 109
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 106
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->onBackPressed()V

    .line 107
    const/4 v0, 0x1

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
