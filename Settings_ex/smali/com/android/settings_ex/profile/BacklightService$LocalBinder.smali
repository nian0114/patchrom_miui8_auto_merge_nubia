.class public Lcom/android/settings_ex/profile/BacklightService$LocalBinder;
.super Landroid/os/Binder;
.source "BacklightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profile/BacklightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profile/BacklightService;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/profile/BacklightService;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings_ex/profile/BacklightService$LocalBinder;->this$0:Lcom/android/settings_ex/profile/BacklightService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
