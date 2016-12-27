.class public Lcom/android/settings_ex/widget/AppRunningPieEntity;
.super Ljava/lang/Object;
.source "AppRunningPieEntity.java"


# instance fields
.field public color:I

.field public value:F


# direct methods
.method public constructor <init>(FI)V
    .locals 0
    .param p1, "value"    # F
    .param p2, "color"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/android/settings_ex/widget/AppRunningPieEntity;->value:F

    .line 10
    iput p2, p0, Lcom/android/settings_ex/widget/AppRunningPieEntity;->color:I

    .line 11
    return-void
.end method
