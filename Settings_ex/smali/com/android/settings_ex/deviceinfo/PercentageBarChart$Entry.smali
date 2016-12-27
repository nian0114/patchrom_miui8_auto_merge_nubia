.class public Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;
.super Ljava/lang/Object;
.source "PercentageBarChart.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/PercentageBarChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field public final color1:I

.field public final color2:I

.field public final order:I

.field public final paint:Landroid/graphics/Paint;

.field public final percentage:F


# direct methods
.method protected constructor <init>(IFLandroid/graphics/Paint;II)V
    .locals 0
    .param p1, "order"    # I
    .param p2, "percentage"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "color1"    # I
    .param p5, "color2"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->order:I

    .line 53
    iput p2, p0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->percentage:F

    .line 54
    iput-object p3, p0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    .line 55
    iput p4, p0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->color1:I

    .line 56
    iput p5, p0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->color2:I

    .line 57
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;)I
    .locals 2
    .param p1, "another"    # Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->order:I

    iget v1, p1, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->order:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 45
    check-cast p1, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->compareTo(Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;)I

    move-result v0

    return v0
.end method
