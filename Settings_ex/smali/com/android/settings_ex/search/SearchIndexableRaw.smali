.class public Lcom/android/settings_ex/search/SearchIndexableRaw;
.super Landroid/provider/SearchIndexableData;
.source "SearchIndexableRaw.java"


# instance fields
.field public entries:Ljava/lang/String;

.field public keywords:Ljava/lang/String;

.field public screenTitle:Ljava/lang/String;

.field public summaryOff:Ljava/lang/String;

.field public summaryOn:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    .line 63
    return-void
.end method
