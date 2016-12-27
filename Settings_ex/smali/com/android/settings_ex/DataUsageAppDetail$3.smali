.class Lcom/android/settings_ex/DataUsageAppDetail$3;
.super Ljava/lang/Object;
.source "DataUsageAppDetail.java"

# interfaces
.implements Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageAppDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageAppDetail;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageAppDetail;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageAppDetail$3;->this$0:Lcom/android/settings_ex/DataUsageAppDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLimitChanged()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public onWarningChanged()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public requestLimitEdit()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public requestWarningEdit()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method
