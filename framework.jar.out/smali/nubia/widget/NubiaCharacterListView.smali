.class public Lnubia/widget/NubiaCharacterListView;
.super Landroid/view/View;
.source "NubiaCharacterListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;
    }
.end annotation


# instance fields
.field private final BOUNDS:I

.field private final TAG:Ljava/lang/String;

.field protected b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private mChoose:I

.field private mFlag:Z

.field private mHighLightCharacterList:[Ljava/lang/String;

.field private mPaintBg:Landroid/graphics/Paint;

.field private mPaintPos:Landroid/graphics/Paint;

.field private mPaintTxt:Landroid/graphics/Paint;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupText:Landroid/widget/TextView;

.field private mPopupXLoc:I

.field private mRectBg:Landroid/graphics/RectF;

.field onTouchingLetterChangedListener:Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

.field private temp:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "NubiaCharacterListView"

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->TAG:Ljava/lang/String;

    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->b:[Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v4

    const-string v1, "A"

    aput-object v1, v0, v5

    const-string v1, "\u2022"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->c:[Ljava/lang/String;

    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->b:[Ljava/lang/String;

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintBg:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintPos:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mRectBg:Landroid/graphics/RectF;

    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    const/16 v0, 0x32a

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->BOUNDS:I

    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lnubia/widget/NubiaCharacterListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "NubiaCharacterListView"

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->TAG:Ljava/lang/String;

    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->b:[Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v4

    const-string v1, "A"

    aput-object v1, v0, v5

    const-string v1, "\u2022"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->c:[Ljava/lang/String;

    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->b:[Ljava/lang/String;

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintBg:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintPos:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mRectBg:Landroid/graphics/RectF;

    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    const/16 v0, 0x32a

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->BOUNDS:I

    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lnubia/widget/NubiaCharacterListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "NubiaCharacterListView"

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->TAG:Ljava/lang/String;

    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->b:[Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v4

    const-string v1, "A"

    aput-object v1, v0, v5

    const-string v1, "\u2022"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->c:[Ljava/lang/String;

    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->b:[Ljava/lang/String;

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintBg:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintPos:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mRectBg:Landroid/graphics/RectF;

    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    const/16 v0, 0x32a

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->BOUNDS:I

    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lnubia/widget/NubiaCharacterListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lnubia/widget/NubiaCharacterListView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaCharacterListView;

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private hidePopupWindow()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnubia/widget/NubiaCharacterListView$1;

    invoke-direct {v1, p0}, Lnubia/widget/NubiaCharacterListView$1;-><init>(Lnubia/widget/NubiaCharacterListView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x3030010

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, "popupContent":Landroid/view/View;
    const/high16 v2, 0x30d0000

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v1, v5, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x3090072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lnubia/widget/NubiaCharacterListView;->mPopupXLoc:I

    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x30a0011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .local v0, "circleColor":I
    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPaintPos:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPaintPos:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private isInHighLightCharacterList([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "highLightCharacterList"    # [Ljava/lang/String;
    .param p2, "currentCharacter"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private showPopupWindow(Ljava/lang/String;)V
    .locals 4
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x5

    iget v2, p0, Lnubia/widget/NubiaCharacterListView;->mPopupXLoc:I

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .local v4, "y":F
    iget v3, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .local v3, "oldChoose":I
    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->onTouchingLetterChangedListener:Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    .local v2, "listener":Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v4, v5

    iget-object v6, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v6, v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .local v1, "c":I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v8

    :pswitch_0
    iput-boolean v8, p0, Lnubia/widget/NubiaCharacterListView;->mFlag:Z

    if-eq v3, v1, :cond_2

    if-eqz v2, :cond_2

    if-ltz v1, :cond_2

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "\u2022"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {p0, v5}, Lnubia/widget/NubiaCharacterListView;->showPopupWindow(Ljava/lang/String;)V

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v2, v5}, Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    iput v1, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    :cond_2
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->postInvalidate()V

    goto :goto_0

    :pswitch_1
    if-eq v3, v1, :cond_0

    if-eqz v2, :cond_0

    if-ltz v1, :cond_0

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_3

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_3
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "\u2022"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lnubia/widget/NubiaCharacterListView;->mFlag:Z

    iget-object v6, p0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    iget-object v7, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-direct {p0, v6, v7}, Lnubia/widget/NubiaCharacterListView;->isInHighLightCharacterList([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {p0, v5}, Lnubia/widget/NubiaCharacterListView;->showPopupWindow(Ljava/lang/String;)V

    :cond_4
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v2, v5}, Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    move-result v5

    if-ne v8, v5, :cond_0

    iput v1, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->postInvalidate()V

    goto/16 :goto_0

    :pswitch_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lnubia/widget/NubiaCharacterListView;->mFlag:Z

    invoke-direct {p0}, Lnubia/widget/NubiaCharacterListView;->hidePopupWindow()V

    if-eqz v2, :cond_5

    invoke-interface {v2, v7}, Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    :cond_5
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->postInvalidate()V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0}, Lnubia/widget/NubiaCharacterListView;->hidePopupWindow()V

    if-eqz v2, :cond_6

    invoke-interface {v2, v7}, Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    :cond_6
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->postInvalidate()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected drawLetter(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaCharacterListView;->getHeight()I

    move-result v4

    .local v4, "height":I
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaCharacterListView;->getWidth()I

    move-result v12

    .local v12, "width":I
    const/16 v15, 0x32a

    if-ge v4, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->c:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaCharacterListView;->getSingleHeight()F

    move-result v11

    .local v11, "singleHeight":F
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x3090071

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .local v7, "paintTextSize":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v15, v15

    if-ge v6, v15, :cond_5

    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x30a0010

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .local v10, "releaseTextColor":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    sget-object v16, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    div-int/lit8 v15, v12, 0x2

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v6

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v16

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    sub-float v13, v15, v16

    .local v13, "xPos":F
    int-to-float v15, v6

    mul-float/2addr v15, v11

    add-float v14, v15, v11

    .local v14, "yPos":F
    const/high16 v15, 0x41200000    # 10.0f

    div-float v15, v11, v15

    sub-float v2, v14, v15

    .local v2, "baseY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnubia/widget/NubiaCharacterListView;->mFlag:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lnubia/widget/NubiaCharacterListView;->isInHighLightCharacterList([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    const/4 v15, 0x1

    :goto_2
    and-int v15, v15, v16

    if-eqz v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x30a0012

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .local v5, "highlightTextColor":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setColor(I)V

    .end local v5    # "highlightTextColor":I
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    if-ne v6, v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x30a0011

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .local v8, "pressedTextColor":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lnubia/widget/NubiaCharacterListView;->mFlag:Z

    if-nez v15, :cond_1

    const v15, 0x3f866666    # 1.05f

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v17, v0

    add-float v16, v16, v17

    mul-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float v3, v2, v15

    .local v3, "centerY":F
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaCharacterListView;->getSingleHeight()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v16, v0

    add-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v9, v15, v16

    .local v9, "radius":F
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaCharacterListView;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaCharacterListView;->mPaintPos:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v3, v9, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x30a0013

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .end local v3    # "centerY":F
    .end local v9    # "radius":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .end local v8    # "pressedTextColor":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v15, v15, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v13, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v15}, Landroid/graphics/Paint;->reset()V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .end local v2    # "baseY":F
    .end local v6    # "i":I
    .end local v7    # "paintTextSize":F
    .end local v10    # "releaseTextColor":I
    .end local v11    # "singleHeight":F
    .end local v13    # "xPos":F
    .end local v14    # "yPos":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->b:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    goto/16 :goto_0

    .restart local v2    # "baseY":F
    .restart local v6    # "i":I
    .restart local v7    # "paintTextSize":F
    .restart local v10    # "releaseTextColor":I
    .restart local v11    # "singleHeight":F
    .restart local v13    # "xPos":F
    .restart local v14    # "yPos":F
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_2

    .end local v2    # "baseY":F
    .end local v10    # "releaseTextColor":I
    .end local v13    # "xPos":F
    .end local v14    # "yPos":F
    :cond_5
    return-void
.end method

.method protected drawViewBackground(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x30a0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .local v0, "backgroundColor":I
    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->mPaintBg:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->mRectBg:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->mRectBg:Landroid/graphics/RectF;

    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPaintBg:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getSingleHeight()F
    .locals 3

    .prologue
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float v0, v1, v2

    .local v0, "effectHeight":F
    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v1, v1

    int-to-float v1, v1

    div-float v1, v0, v1

    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lnubia/widget/NubiaCharacterListView;->drawViewBackground(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lnubia/widget/NubiaCharacterListView;->drawLetter(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->onTouchingLetterChangedListener:Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->onTouchingLetterChangedListener:Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public setCurrentLetter(Ljava/lang/String;)V
    .locals 3
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    iget v2, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    iget v2, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->postInvalidate()V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setHighLightCharacterList([Ljava/lang/String;)V
    .locals 0
    .param p1, "characterList"    # [Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;)V
    .locals 0
    .param p1, "onTouchingLetterChangedListener"    # Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    .prologue
    iput-object p1, p0, Lnubia/widget/NubiaCharacterListView;->onTouchingLetterChangedListener:Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    return-void
.end method
