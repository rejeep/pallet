include el.mk/el.mk
PROJECT_LCNAME=pallet

ecukes:
	@cask exec servant start > /dev/null 2>&1 &
	@cask exec ecukes
	@cask exec servant stop > /dev/null 2>&1 &
