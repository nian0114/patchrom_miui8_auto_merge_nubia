.class Lcn/nubia/server/HapticsService$5;
.super Landroid/database/ContentObserver;
.source "HapticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/HapticsService;

.field final synthetic val$setting_str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/server/HapticsService;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcn/nubia/server/HapticsService$5;->this$0:Lcn/nubia/server/HapticsService;

    iput-object p3, p0, Lcn/nubia/server/HapticsService$5;->val$setting_str:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    iget-object v1, p0, Lcn/nubia/server/HapticsService$5;->this$0:Lcn/nubia/server/HapticsService;

    # getter for: Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcn/nubia/server/HapticsService;->access$500(Lcn/nubia/server/HapticsService;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/HapticsService$5;->val$setting_str:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "val":I
    const-string v1, "data_haptictheme_SIP"

    iget-object v2, p0, Lcn/nubia/server/HapticsService$5;->val$setting_str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/server/HapticsService$5;->this$0:Lcn/nubia/server/HapticsService;

    # setter for: Lcn/nubia/server/HapticsService;->mHapticsThemeSIP:I
    invoke-static {v1, v0}, Lcn/nubia/server/HapticsService;->access$802(Lcn/nubia/server/HapticsService;I)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "data_haptictheme_dialpad"

    iget-object v2, p0, Lcn/nubia/server/HapticsService$5;->val$setting_str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/server/HapticsService$5;->this$0:Lcn/nubia/server/HapticsService;

    # setter for: Lcn/nubia/server/HapticsService;->mHapticsThemeDialpad:I
    invoke-static {v1, v0}, Lcn/nubia/server/HapticsService;->access$902(Lcn/nubia/server/HapticsService;I)I

    goto :goto_0

    :cond_2
    const-string v1, "data_haptictheme_launcher"

    iget-object v2, p0, Lcn/nubia/server/HapticsService$5;->val$setting_str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/server/HapticsService$5;->this$0:Lcn/nubia/server/HapticsService;

    # setter for: Lcn/nubia/server/HapticsService;->mHapticsThemeLauncher:I
    invoke-static {v1, v0}, Lcn/nubia/server/HapticsService;->access$1002(Lcn/nubia/server/HapticsService;I)I

    goto :goto_0

    :cond_3
    const-string v1, "data_haptictheme_longpress"

    iget-object v2, p0, Lcn/nubia/server/HapticsService$5;->val$setting_str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/nubia/server/HapticsService$5;->this$0:Lcn/nubia/server/HapticsService;

    # setter for: Lcn/nubia/server/HapticsService;->mHapticsThemeLPress:I
    invoke-static {v1, v0}, Lcn/nubia/server/HapticsService;->access$1102(Lcn/nubia/server/HapticsService;I)I

    goto :goto_0

    :cond_4
    const-string v1, "data_haptictheme_virtualkey"

    iget-object v2, p0, Lcn/nubia/server/HapticsService$5;->val$setting_str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcn/nubia/server/HapticsService$5;->this$0:Lcn/nubia/server/HapticsService;

    # setter for: Lcn/nubia/server/HapticsService;->mHapticsThemeVK:I
    invoke-static {v1, v0}, Lcn/nubia/server/HapticsService;->access$1202(Lcn/nubia/server/HapticsService;I)I

    goto :goto_0

    :cond_5
    const-string v1, "data_haptictheme_rotate"

    iget-object v2, p0, Lcn/nubia/server/HapticsService$5;->val$setting_str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcn/nubia/server/HapticsService$5;->this$0:Lcn/nubia/server/HapticsService;

    # setter for: Lcn/nubia/server/HapticsService;->mHapticsThemeRotate:I
    invoke-static {v1, v0}, Lcn/nubia/server/HapticsService;->access$1302(Lcn/nubia/server/HapticsService;I)I

    goto :goto_0

    :cond_6
    const-string v1, "data_haptictheme_gallery"

    iget-object v2, p0, Lcn/nubia/server/HapticsService$5;->val$setting_str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcn/nubia/server/HapticsService$5;->this$0:Lcn/nubia/server/HapticsService;

    # setter for: Lcn/nubia/server/HapticsService;->mHapticsThemeGallery:I
    invoke-static {v1, v0}, Lcn/nubia/server/HapticsService;->access$1402(Lcn/nubia/server/HapticsService;I)I

    goto :goto_0

    :cond_7
    const-string v1, "data_haptictheme_scroll"

    iget-object v2, p0, Lcn/nubia/server/HapticsService$5;->val$setting_str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcn/nubia/server/HapticsService$5;->this$0:Lcn/nubia/server/HapticsService;

    # setter for: Lcn/nubia/server/HapticsService;->mHapticsScrolling:I
    invoke-static {v1, v0}, Lcn/nubia/server/HapticsService;->access$1502(Lcn/nubia/server/HapticsService;I)I

    goto :goto_0

    :cond_8
    const-string v1, "data_haptictheme_multi_touch"

    iget-object v2, p0, Lcn/nubia/server/HapticsService$5;->val$setting_str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/server/HapticsService$5;->this$0:Lcn/nubia/server/HapticsService;

    # setter for: Lcn/nubia/server/HapticsService;->mHapticsMultitouch:I
    invoke-static {v1, v0}, Lcn/nubia/server/HapticsService;->access$1602(Lcn/nubia/server/HapticsService;I)I

    goto :goto_0
.end method
