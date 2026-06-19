/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

#include "colors.h"

static int topbar                         = 1;      /* -b  option; if 0, dmenu appears at bottom     */
static int centered                       = 1;      /* -c option; centers dmenu on screen */
static int fuzzy                          = 1;      /* -F  option; if 0, dmenu doesn't use fuzzy matching */
static int min_width                      = 500;    /* minimum width when centered */
static int fullwidth                      = 1;      /* start drawing at x=0 instead of x=promptwidth */
static unsigned int lines                 = 15;     /* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int border_width          = 2;      /* Size of the window border */
static const float menu_height_ratio      = 4.0f;   /* This is the ratio used in the original calculation */
static const unsigned int alpha           = 0xe5;   /* Amount of opacity. 0xff is opaque             */

/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[]                = {"JetBrainsMono Nerd Font:size=10"}; // "monospace:size=10"
static const char *prompt                 = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2]  = {
	/*                        fg         bg       */
	[SchemeNorm]          = { col_gray4, col_gray1 },
 	[SchemeNormHighlight] = { col_acce2, col_gray1 },
	[SchemeSel]           = { col_gray3, col_gray2 },
 	[SchemeSelHighlight]  = { col_acce2, col_gray2 },

	[SchemeOut]           = { col_gray3, col_acce1 },
 	[SchemeCaret]         = { col_gray4, NULL },
	[SchemeBorder]        = { col_gray5, NULL },
};

static const unsigned int alphas[SchemeLast][2] = {
	[SchemeNorm]          = { OPAQUE, alpha },
 	[SchemeNormHighlight] = { OPAQUE, alpha },
	[SchemeSel]           = { OPAQUE, alpha },
 	[SchemeSelHighlight]  = { OPAQUE, alpha },
	[SchemeOut]           = { OPAQUE, alpha },
	[SchemeBorder]        = { OPAQUE, alpha },
};


/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";

