.class public Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;
.super Ljava/lang/Object;
.source "AppTypeListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/AppTypeListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppTypeEntity"
.end annotation


# instance fields
.field public defaultAppSummary:Ljava/lang/String;

.field public defaultAppType:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/applications/AppTypeListActivity;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeEntity;->this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
