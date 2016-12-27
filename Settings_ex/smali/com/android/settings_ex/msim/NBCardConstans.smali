.class public Lcom/android/settings_ex/msim/NBCardConstans;
.super Ljava/lang/Object;
.source "NBCardConstans.java"


# static fields
.field public static final HELP_IMAGE_CARD_ONE_STATE:[I

.field public static final HELP_IMAGE_CARD_TWO_STATE:[I

.field public static final IMAGE_CARD_ONE_STATE:[I

.field public static final IMAGE_CARD_SWITCH:[[I

.field public static final IMAGE_CARD_TEXT_COLOR:[I

.field public static final IMAGE_CARD_TWO_STATE:[I

.field public static final STRING_CARD_STATE:[I

.field private static final mIccIDMapType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final mMccMncMapType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 59
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->IMAGE_CARD_ONE_STATE:[I

    .line 64
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->HELP_IMAGE_CARD_ONE_STATE:[I

    .line 69
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->IMAGE_CARD_TWO_STATE:[I

    .line 74
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->HELP_IMAGE_CARD_TWO_STATE:[I

    .line 78
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->IMAGE_CARD_TEXT_COLOR:[I

    .line 82
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->IMAGE_CARD_SWITCH:[[I

    .line 87
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->STRING_CARD_STATE:[I

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->mIccIDMapType:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->mMccMncMapType:Ljava/util/HashMap;

    .line 99
    sget-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->mIccIDMapType:Ljava/util/HashMap;

    const-string v1, "898600"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->mMccMncMapType:Ljava/util/HashMap;

    const-string v1, "46000"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->mMccMncMapType:Ljava/util/HashMap;

    const-string v1, "46002"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->mMccMncMapType:Ljava/util/HashMap;

    const-string v1, "46007"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->mMccMncMapType:Ljava/util/HashMap;

    const-string v1, "46008"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->mIccIDMapType:Ljava/util/HashMap;

    const-string v1, "898601"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->mMccMncMapType:Ljava/util/HashMap;

    const-string v1, "46001"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->mMccMncMapType:Ljava/util/HashMap;

    const-string v1, "46006"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->mMccMncMapType:Ljava/util/HashMap;

    const-string v1, "46009"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->mIccIDMapType:Ljava/util/HashMap;

    const-string v1, "898603"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->mIccIDMapType:Ljava/util/HashMap;

    const-string v1, "898611"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->mMccMncMapType:Ljava/util/HashMap;

    const-string v1, "46003"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->mMccMncMapType:Ljava/util/HashMap;

    const-string v1, "46005"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/settings_ex/msim/NBCardConstans;->mMccMncMapType:Ljava/util/HashMap;

    const-string v1, "46011"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void

    .line 59
    :array_0
    .array-data 4
        0x7f0201aa
        0x7f0201b2
        0x7f0201b0
        0x7f0201b1
    .end array-data

    .line 64
    :array_1
    .array-data 4
        0x7f0201b3
        0x7f0201b7
        0x7f0201b5
        0x7f0201b6
    .end array-data

    .line 69
    :array_2
    .array-data 4
        0x7f0201ad
        0x7f0201b2
        0x7f0201b0
        0x7f0201b1
    .end array-data

    .line 74
    :array_3
    .array-data 4
        0x7f0201b4
        0x7f0201b7
        0x7f0201b5
        0x7f0201b6
    .end array-data

    .line 78
    :array_4
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x777778
    .end array-data

    .line 82
    :array_5
    .array-data 4
        0x7f0201ac
        0x7f0201ab
    .end array-data

    :array_6
    .array-data 4
        0x7f0201af
        0x7f0201ae
    .end array-data

    .line 87
    :array_7
    .array-data 4
        0x7f0c0c06
        0x7f0c0c07
        0x7f0c0c08
        0x7f0c0c0a
        0x7f0c0c0b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
